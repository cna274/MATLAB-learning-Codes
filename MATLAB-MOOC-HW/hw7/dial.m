function output = dial(input)
        output = 0;
        
        for ii = 1:length(input)
            if (input(ii) > 31 && input(ii) < 47) | (input(ii) > 58 && input(ii) < 65) | (input > 90)
                number = 0;
                output = uint64(number);
                return;
            end                
            if input(ii) == 'A' || input(ii) == 'B' || input(ii) == 'C'
                output = [output '2'];
            elseif input(ii) == 'D' || input(ii) == 'E' || input(ii) == 'F'
                output = [output '3'];
            elseif input(ii) == 'G' || input(ii) == 'H' || input(ii) == 'I'
                output = [output '4'];
            elseif input(ii) == 'J' || input(ii) == 'K' || input(ii) == 'L'
                output = [output '5'];
            elseif input(ii) == 'M' || input(ii) == 'N' || input(ii) == 'O'
                output = [output '6'];
            elseif input(ii) == 'P' || input(ii) == 'Q' || input(ii) == 'R' || input(ii) == 'S'
                output = [output '7'];
            elseif input(ii) == 'T' || input(ii) == 'U' || input(ii) == 'V'
                output = [output '8'];
            elseif input(ii) == 'W' || input(ii) == 'X' || input(ii) == 'Y' || input(ii) == 'Z'
                output = [output '9'];
            else
                output = [output input(ii)];
            end
        end
        number = str2num(output);
        output = uint64(number);
end
        