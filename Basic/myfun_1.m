% FSOLVE command Example 1
% Code

function F = myfun_1(x)
    F = [2*x(1)-x(2)-exp(-x(1));
           -x(1) + 2*x(2)-exp(-x(2))
           ];