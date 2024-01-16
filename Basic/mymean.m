% Mean function in Matlab
% Code
function F = mymean(X)

    X_size = size(X);
    rownum = X_size(1);
    colnum = X_size(2);

    F = zeros(1, colnum);

        for i = 1:colnum;
            sumi = 0;
            for j = 1:rownum;
                sumi = sumi + X(j,i);
            end;
            F(1,i) = sumi/rownum;
        end;