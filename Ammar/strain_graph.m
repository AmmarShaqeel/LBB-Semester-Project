%% Load_capacitance
clear all;
filename = input('Filename? ', 's');
continuous = input('continuous y/n? ', 's');
string_length = input('Length (mm)? ');
sheet = 2;
xlRange = 'b:b';
x2Range = 'c:c';
start_points = [];

data = xlsread(filename,sheet,xlRange);
change_marker = xlsread(filename,sheet,x2Range);

for i = 1:length(change_marker)
    if(change_marker(i) == 1)
        start_points = [start_points i];
    end
end

resistance = [];
strain = [];

if strcmp(continuous,'y')
    starting_point = input('starting cell? ');
    for i = 1:(length(data) - starting_point)
        resistance(i) = data(starting_point + (i-1));
        strain(i) = (i-1)*0.05/string_length;
    end
    
else 
    strain_length = string_length * 0.1 / 0.05;
    k = 1;
    for i = 1:length(start_points)
        starting_point = start_points(i);
        resistance(1+(strain_length*(i-1)):strain_length*(i)+1) = data(starting_point:strain_length+starting_point);
        k = i;
    end
    strain = linspace(0,0.1*(k),strain_length*(k) + 1);

end

resistance = resistance./(string_length/10);
save_file = filename(1:(length(filename)-5));
save(save_file);
        
semilogy(strain, abs(resistance));
