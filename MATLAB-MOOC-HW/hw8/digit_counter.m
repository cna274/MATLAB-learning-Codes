function NoDigits = digit_counter(filename)
fid = fopen(filename,'r');
if fid < 0
    NoDigits = -1;
    return;
end
oneline = fgets(fid);
NoDigits = 0;
while ischar(oneline)
    %sprintf('%s', oneline)
    %disp('Hi');
    i=1;
    while i < length(oneline)
    if int8(oneline(i)) >= 48 && int8(oneline(i)) <= 57
        NoDigits = NoDigits + 1;
    end
    i = i+1;
    end
    oneline = fgets(fid);
end
