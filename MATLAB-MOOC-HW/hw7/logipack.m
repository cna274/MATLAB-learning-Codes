function result = logipack(A)
    [row,col] = size(A);
    RowVec = [];
    for ii = 1:row
        for jj = 1:col
            if A(ii,jj)== true(1)
                RowVec = [RowVec jj];
            end
        end
        result{ii} = RowVec;
        RowVec = [];
    end
    
        