function cent = centuries(input)
    cent = [];
    m = ~isscalar(input);
    if ((input > 3000) | (input < 1))    
        return;
    end
    if m || input ~= floor(input)
        return;
    end
    
    StrArray = {'I','II','III','IV','V','VI','VII','VIII','IX','X'};
    number1 = mod(input,100);
    number2 = floor(input/100);
    cent = blanks(4);
    count = 0;
    if number1 == 0;
        n = (number2);
    else
        n = (number2+1);
    end
    while n > 10
            n = n - 10;
            count = count + 1;
    end
    for ii = 1:count
        cent = strcat(cent, StrArray{10});
    end
    %n = num2str(n);
    cent = strcat(cent, StrArray{n});
end