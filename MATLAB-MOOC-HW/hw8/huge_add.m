function sum = huge_add(input1,input2)

%71950170222756611313733840909742893', '41984650444691441589027918018660899'
    
    if isnumeric(input1) || isnumeric(input2)
        sum = -1;
        return
    end
    n1 = str2num(input1);
    n2 = str2num(input2);
    
    if length(n1) == 2
       sum = -1;
        return;
    end
    
    if length(n2) == 2
       sum = -1;
        return;
    end
   
    if input1(1)== '-' || input2(1) == '-' || ceil(n1) ~= n1 || ceil(n2) ~= n2
        sum = -1;
        return;
    end
    
    
    
    
    no1 = length(input1);
    no2 = length(input2);
    sum = [];
    carry = '0';
    if no1 >= no2
        size = no2;
    else
        size = no1;
    end
    
    while size > 0
        %if input1(1)== '-' || input2(1) == '-'
        %    c = str2num(input1(no1))- str2num(input2(no2))+str2num(carry);
        %else
            c = str2num(input1(no1))+ str2num(input2(no2))+str2num(carry);
        %end
        
        d = num2str(c);
        %if isempty(d)
        %    break
        %end
        if length(d) == 2
            carry = d(1);
            sum = [d(2) sum];
        else
            carry = '0';
            sum = [d(1) sum];
        end
        size = size - 1;
        no2 = no2 - 1;
        no1 = no1 - 1;
    end
    while carry == '1'
        if no1 > no2
          c = str2num(input1(no1))+ str2num(carry);
        %end
        d = num2str(c);
        %if isempty(d)
        %    break
        %end
            if length(d) == 2
                carry = d(1);
                sum = [d(2) sum];
            else
                carry = '0';
                sum = [d(1) sum];
            end
            no1 = no1 - 1;
        elseif no2>no1
            c = str2num(input2(no2))+ str2num(carry);
        %end
        d = num2str(c);
        %if isempty(d)
        %    break
        %end
            if length(d) == 2
                carry = d(1);
                sum = [d(2) sum];
            else
                carry = '0';
                sum = [d(1) sum];
            end
          no2 = no2 - 1;      
        else
          sum = [carry sum];  
          carry = '0';
        end
        
    end
    if no1 > no2
        sum = [input1(1:no1) sum];
    elseif no2 > no1
        sum = [input2(1:no2) sum];
    end
    