function Result = year2016(month)
    
    if month > 12 | month <= 0 
        Result=struct([]);
%         %Result = cell(1,31);
%         for jj = 1:10
%             Result(jj).month = [];
%             Result(jj).date = [];
%             Result(jj).day = [];
%        end
        
        return;
    end
    if ~isscalar(month)|| month ~=floor(month)
        Result=struct([]);
        return;
    end
    
    % Array to store information about the names of days and months.
    NameOfMonths = {'January', 'February','March','April','May','June','July','August',...
        'September','October','November','December'};
    
    NameOfDays = {'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'};
    %    
    %To find first day of the month.
    mon_days = [31 29 31 30 31 30 31 31 30 31 30 31];
    NoOfDays = sum(mon_days(1:(month-1)));
    NoOfDays = mod((5+NoOfDays),7);
    if(NoOfDays==0)
        NoOfDays = 7;
    end
    FirstDay = NoOfDays;
    %
    %First field of the structure updating with the months' name.    
    for ii = 1:mon_days(month)
        Result(ii).month = NameOfMonths{month};
        Result(ii).date = ii;
        temp = mod(FirstDay+ii-1,7);
        if temp == 0
            temp = 7;
        end
        Result(ii).day = NameOfDays{temp};
        
    end
    
    