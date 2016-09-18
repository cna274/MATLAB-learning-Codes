function number = palin_product(dig,lim)
    HighNumber = 10^dig-1;
    LowNumber = 10^(dig-1);
    k = 1;
    number = 0;
    for ii = HighNumber :-1: LowNumber
        for jj = HighNumber :-1: LowNumber
            if ii*jj < lim
                if ispalin(ii*jj)
                    number(k) = ii*jj;
                    k = k+1;
                end
            end
        end
    end
   % if isempty(number)
   %     number = 0;
   % else
        number = max(number);
   % end