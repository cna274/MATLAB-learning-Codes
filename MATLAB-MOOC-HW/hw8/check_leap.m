function value = check_leap(year)
        value = 0;
        flag = 0;
        if mod(year,4)==0
            flag = 1;
        end
        if flag == 1
            if mod(year,100) == 0 && mod(year,400)~=0
                value = 0;
            else
                value = 1;
            end
        end
        