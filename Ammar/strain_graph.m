% This assumes that you have formatted the sheet with the resistance/second
% values on the 2nd sheet, column B of an excel workbook.

% If the data is not continous (i.e stretched in steps) then the script
% assumes that you have marked the begining points of each step with a 1 in
% column C NB: You must also mark the begining and end of the column with
% some data (e.g. 0s).



% Load Files, set sheets, etc
clear all;
filename = input('Filename? ', 's');
string_length = input('Length (mm)? ');
sheet = 2;

% are you stretching the fiber continuously?
continuous = input('continuous y/n? ', 's');


% Load the two data ranges
xlRange = 'b:b';
x2Range = 'c:c';
start_points = [];
data = xlsread(filename,sheet,xlRange);
change_marker = xlsread(filename,sheet,x2Range);


% steps through the column next to the resistance and looks for '1's
% marking transitions - this is if you stretched the fiber is steps
for i = 1:length(change_marker)
    if(change_marker(i) == 1)
        start_points = [start_points i];
    end
end

resistance = [];
strain = [];

% change to match your settings
stretching_speed = 0.05;
strain_step = 0.1;

% if the file is continous, it assumes the machine is stretching
if strcmp(continuous,'y')
    
    % asks for the first point where stretching starts
    starting_point = input('starting cell? ');
    for i = 1:(length(data) - starting_point)
        
        % takes the resistance value each second and adds it to an array
        resistance(i) = data(starting_point + (i-1));
        
        % here strain is calculated by the time * the speed of stretching
        % (here 0.05)/original length
        strain(i) = (i-1)*stretching_speed/string_length;
    end
    
else 
    % if the data is not continous it calculates the points need to reach a
    % certain strain - here the strain is 10% or 0.1 with a stretching
    % speed of 0.05
    strain_length = string_length * strain_step / stretching_speed;
    k = 1;
    
    % from each start point - it estimates the number of points needed to
    % reach a certain strain (e.g a 1cm fiber being stretched at 0.05mm
    % would need 20 secs to reach 10% strain) and appends that number of
    % points (1 point per second) to the resistance array.
    for i = 1:length(start_points)
        starting_point = start_points(i);
        resistance(1+(strain_length*(i-1)):strain_length*(i)+1) = data(starting_point:strain_length+starting_point);
        k = i;
    end
    % estimates strain through linspace (e.g if you did 4 steps of 10% it
    % will produce the appropriate strain)
    strain = linspace(0,strain_step*(k),strain_length*(k) + 1);

end

% normalises the resistance
resistance = resistance./(string_length/10);

% saves the data as .mat - so you can plot the data quickly (e.g
% load(save_file)) without needing to reprocess the data
save_file = filename(1:(length(filename)-5));
save(save_file);
        
% plots data on semilogy curve
semilogy(strain, abs(resistance));
xlabel('Strain (\Deltacm/cm)');
ylabel('Resistance (\Omega/cm)');

