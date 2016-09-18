function bol = ispalin(i)
    temp = num2str(i);
    if temp == fliplr(temp)
        bol = 1;
    else
        bol = 0;
    end
end