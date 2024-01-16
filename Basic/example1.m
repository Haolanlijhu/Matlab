% FZERO command Example 1
% Code
clear all;
clc;

% Make an initial guess for the solution
x0 = 2 ;

% Call the function to solve for x, given the initial guess x0
x = fzero(@myfun1,x0) ;

disp('X =');disp(x);