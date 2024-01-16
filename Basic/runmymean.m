% Run the function mymean
% Code

clear all;
clc;

X = [1,2,3;4,5,6;7,8,9;10,11,12];

Y = mymean(X);

disp('X = '); disp(X);
disp('Mean of each column of X = '); disp(Y);