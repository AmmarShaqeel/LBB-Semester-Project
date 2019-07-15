%% Load_capacitance
clear all
filename = input('Filename? ', 's');
continuous = input('continuous y/n? ', 's');
string_length = input('Length? ');
sheet = 2;
xlRange = 'b:b';

data = xlsread(filename,sheet,xlRange);

resistance = [];
strain = [];

if strcmp(continuous,'y')
    starting_point = input('starting cell? ');
    for i = 1:(length(data) - starting_point)
        resistance(i) = data(starting_point + (i-1));
        strain(i) = (i-1)*0.05/string_length;
    end
end

save_file = filename(1:(length(filename)-5));
save(save_file);
        
semilogy(strain, resistance);
