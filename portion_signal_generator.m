function portion_signal = portion_signal_generator(signal_name,time)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    if strcmp(signal_name , 'sinusoidal')
        prompt = 'please provide the Amplitude of the signal: ';
        amp = input(prompt);
        
        prompt = 'please provide the Frequency of the signal: ';
        freq = input(prompt);
        
        prompt = 'please provide the Phase of the signal: ';
        phase = input(prompt);
        
        portion_signal = amp*sin(2*pi*time*freq + phase);
    
    elseif strcmp(signal_name, 'dc')
        prompt = 'please provide the Amplitude of the signal: ';
        amp = input(prompt);
        le = length(time);
        portion_signal = amp*ones(1,le);
        
    elseif strcmp(signal_name, 'ramp')
        prompt = 'please provide the Amplitude of the signal: ';
        amp = input(prompt);
        
        prompt = 'please provide the intercept of the signal: ';
        intercept = input(prompt);
        
        portion_signal = amp*time + intercept;
        
    elseif strcmp(signal_name, 'exponential')
        prompt = 'please provide the Amplitude of the signal: ';
        amp = input(prompt);
        
        prompt = 'please provide the exponent of the signal: ';
        exponent = input(prompt);
        
        portion_signal = amp*exp(exponent*time);
        
        
     elseif strcmp(signal_name, 'polynomial')
        prompt = 'please provide the power of the signal: ';
        power = input(prompt);
        i=1;
        fprintf('please provide the coeffenets of the signal from higher to lower order:\n');
        coeffenets = zeros(1, power+1);
        portion_signal = 0;
        while (i<=power+1)
            coeffenets(i)=input('');
            portion_signal=portion_signal+coeffenets(i)*time.^((power+1)-i);
            i=i+1;
        end
        
    end
end