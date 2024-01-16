% FSOLVE command Example 1
% Code

clear all;
clc;

% Make an initial guess for the solution
x0 = [-5; -5];

% Call the function to solve for x, given the initial guess x0
x = fsolve(@myfun_1,x0);

disp('X =');disp(x);



