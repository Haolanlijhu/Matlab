% FSOLVE command Example 2
% Code

% Define the function
function F = myfun_2(x,p)
% Name the parameters
ALPHA1=p(1); BETA1=p(2); GAMMA1=p(3);
ALPHA2=p(4); BETA2=p(5); GAMMA2=p(6);
 
   F = [ALPHA1* x(1) + BETA1 * x(2)-exp(GAMMA1 * x(1));
        ALPHA2 * x(2) + BETA2 * x(2)-exp(GAMMA2 * x(2))
       ];