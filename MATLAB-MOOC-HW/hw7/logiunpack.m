function Matrix = logiunpack(cellValues)
    n = length(cellValues);
    %Result = zeros(1,n);
    Matrix = false(1,n);
    for ii = 1:n        
        Result = false(1,n);
        if size(cellValues{ii},1) ~= 0
            Result(cellValues{ii}) = true(1);
        end
        Matrix(ii,:) = Result(1,:);
    end
            
            
            
            
        