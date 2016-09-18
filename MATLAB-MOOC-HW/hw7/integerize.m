function result = integerize(A)
    valueMax = max(A(:));
    valueMin = min(A(:));
    
    if intmax('int8') >= valueMax && valueMin >= intmin('int8')
        result = 'int8';
        return;
    elseif intmax('int16') >= valueMax && valueMin >= intmin('int16')
        result = 'int16';
        return;
    elseif intmax('int32') >= valueMax && valueMin >= intmin('int32')
        result = 'int32';
        return;
    elseif intmax('int64') >= valueMax && valueMin >= intmin('int64')
        result = 'int64';
        return;
    else 
        result = 'NONE';
    end
end
        
    
    
    