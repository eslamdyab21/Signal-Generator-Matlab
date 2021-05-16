clc;
clear;

%1 
%---------------------------------------------------------%
%a) provide the smaple rate
prompt = 'please provide the smaple rate: ';
sample_rate = input(prompt);

%b)provide the start and end of time scale
prompt = 'please provide the start of time scale: ';
start = input(prompt);
prompt = 'please provide the end of time scale: ';
endd = input(prompt);

% time
t = linspace(start,endd,(endd - start)*sample_rate );


%c)provide number of the break points and positions
prompt = 'please provide number of the break points: ';
num_break_points = input(prompt);

if (num_break_points > 0) 
    positions = zeros(1, num_break_points);
    fprintf('please provide the position of break points: \n');
else
    positions =[0];
end

i=1;
while( i <= num_break_points )
    position = input('');
    % being sure the position of break points is valid
    if (position < endd && position > start)
        positions(i) =position;
    else
        fprintf('please provide a correct position for break points!!: \n');
        i = i -1;
    end
    i = i +1;
end

fprintf('------------------------------------------------------------------\n');
% get the signal
signal = signals_generator(start,endd,sample_rate,positions,num_break_points);

% ploting the signal
figure(1)
plot(t,signal)
title('Original Signal')

fprintf('------------------------------------------------------------------\n');
% ask for modifications on the signal
operation_on_signal(t,signal);