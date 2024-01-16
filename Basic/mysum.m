% Loops in MATLAB
% Code
clear all;
clc;

X = [1,2,3,4,5,6,7,8,9,10];
X = X';

X_size = size(X);
X_row_size = X_size(1);
X_sum = 0;

  for i=1:X_row_size
      X_sum = X_sum + X(i);
  end

disp('X = '); disp(X);
disp('Sum of the elements of X = '); disp(X_sum);