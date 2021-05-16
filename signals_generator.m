function signal = signals_generator(start,endd,sample_rate,positions,num_break_points)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if (num_break_points > 0)
    times = [start positions endd];
else
    times = [start endd];
end

signal = [];
j = 1;
while(j <= num_break_points+1)
    
    time = linspace(times(j),times(j+1), (times(j+1) - times(j))*sample_rate);

    prompt = 'please provide the name of portion of the signal: ';
    signal_name = input(prompt,'s');
    
    portion_signal = portion_signal_generator(signal_name,time);
        
    signal = [signal, portion_signal];
    
    j = j +1;
end