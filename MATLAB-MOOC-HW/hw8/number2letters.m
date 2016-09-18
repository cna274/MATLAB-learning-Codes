function result = number2letters(n)
    ones = {'one','two','three','four','five','six','seven','eight','nine'};
    tens = {'ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety','hundred'};
    teens = {'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
    r = '';
    %val1 = 1; val2=1;
    if n>10 && n<20
        r = teens{n-10};
        result = length(r);
        return;
    end
    if floor(n/100)
        x1 = floor(n/100);
        
        r = strcat(r, ones{x1}, tens{10});
    end
    if mod(n,100)
        val1 = mod(n,100);
        x2 = floor(val1/10);
        val2 = mod(val1,10);
        if val1>10 && val1<20
            r = strcat(r,teens{val1-10});
            result = length(r);
            return;
        end
        if x2
            r = strcat(r,tens{x2}); 
        end
    end
    if mod(val2,10)
        val1 = mod(n,100);
        %x2 = int8(val1/10);
        val2 = mod(val1,10);
        x3 = floor(val2/1);
        %val3 = mod(val2,1)
        if x3
            r = strcat(r,ones{x3});
        end
    end
    result  = length(r);