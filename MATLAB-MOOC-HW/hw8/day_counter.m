function Mon = day_counter(year)
    Mon = 0;
    
    %FirstDay = 1;
    %number of days from first day
    Ndays = (year-1776)*365;
    %%check How many leap years from 1776 to given year
    leap = year-1;
    %%if year == 1776
    %    count = 0;
    %%else count = 1;
    %%end
    count = 1;
    while leap > 1775
        if mod(leap,4)==0
            count = count + 1;
        end
        if mod(leap,100) == 0 && mod(leap,400)~=0
            count = count - 1;
        end
        leap = leap - 1;
    end
    %total number of days from jan 1st 1776 to first day of given year
    Ndays = Ndays + count;
    FdayOfyear = mod(Ndays,7);
    i = FdayOfyear;
    if check_leap(year)
        days = 366;
        month = [31 29 31 30 31 30 31 31 30 31 30 31];
    else
        days = 365;
        month = [31 28 31 30 31 30 31 31 30 31 30 31];
    end
    j=1;
    while i < days
        if mod(i,7) == 1
            Mon = Mon + 1;
        end
        i = i + month(j);
        j=j+1;
    end
        
    