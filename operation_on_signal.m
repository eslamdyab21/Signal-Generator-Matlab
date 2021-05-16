function operation_on_signal(t,signal)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    prompt = 'Do you want to perform any operation on the signal? (yes/no)\n';
    answer = input(prompt,'s');
    
    if strcmp(answer , 'yes')
           fprintf('The operations you can perform on the signal are:\na-Amplitude Scaling, \nb-Time reversal, \nc-Time shift, \nd-Expanding the signal, \ne-Compressing the signal, \nf-None\n\n');
           prompt = 'Enter the number of operations you want to perform (from 1 to 5): ';
           num_operations = input(prompt);
           
           figure_num = 2;
           while (num_operations > 0)
                prompt = 'Enter the name of operations you want to perform\ntype a or b or c or d or e or f: ';
                operation = input(prompt, 's');
                
                %a
                if strcmp(operation, 'a')
                    prompt = 'Enter the valule of amplification: ';
                    amp = input(prompt);
                    signal_modifed = amp*signal;
                    figure(figure_num)
                    plot(t,signal_modifed)
                    title('Amplified Signal')
                    
                %b
                elseif strcmp(operation,'b')
                    time = -1.*t;
                    figure(figure_num)
                    plot(time,signal)
                    title('Time Reversed Signal')

                %c
                elseif strcmp(operation,'c')
                    prompt ='enter the value of the shift: ';
                    shift = input(prompt);
                    time= t+shift;
                    figure(figure_num)
                    plot(time,signal)
                    title('Shifted Signal')
                  
                %d    
                elseif strcmp(operation,'d')
                    prompt ='enter the value of Expantion: ';
                    expan = input(prompt);
                    time= expan*t;
                    figure(figure_num)
                    plot(time,signal)
                    title('Expanded Signal')

                %e
                elseif strcmp(operation,'e')
                    prompt ='enter the value of Compresstion: ';
                    comp = input(prompt);
                    time = t./comp;
                    figure(figure_num)
                    plot(time,signal)
                    title('Comoresed Signal')

        
                %f
                elseif strcmp(operation,'f')
                    signal_modifed = signal;
                end
                
           num_operations = num_operations -1;
           figure_num = figure_num +1;
           end
           
    elseif strcmp(answer , 'no')
        signal_modifed = signal;
        
    end
     

end