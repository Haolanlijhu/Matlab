% FZERO command Example 2
% Code
clear all;
clc;

% Make an initial guess for the solution
x0 = 1 ;

% Call the function to solve for x, given the initial guess x0
x = fzero(@myfun2,x0) ;

disp('X =');disp(x);

% Make another initial guess for the solution
x0 = 5 ;

% Call the function to solve for x, given the initial guess x0
x = fzero(@myfun2,x0) ;

disp('X =');disp(x);