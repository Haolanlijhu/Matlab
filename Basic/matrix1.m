% Defining and indexing matrices
% Code
clear all;
clc;

A = [1];
B = [1; 2];
C = [1,2];

D = [1, 2; 3, 4];
E = [1; 2; 3; 4];

F = [1, 2, 3; 4, 5, 6; 7, 8, 9];

G = [1, 2, 3, 4; 5, 6, 7, 8];

disp('A =');disp(A);
disp('B =');disp(B);
disp('C =');disp(C);
disp('D =');disp(D);
disp('E =');disp(E);
disp('F =');disp(F);
disp('G =');disp(G);

% Display the element in the 2nd row and 3rd column of F
disp('F(2,3) =');disp(F(2,3));
%Display the element in the 2nd row and 4th column of F
disp('G(2,4) =');disp(G(2,4));
% Display the entire first row of F
disp('F(1,:) =');disp(F(1,:));
% Display the entire third column of F
disp('F(:3) =');disp(F(:,3));
% Display all rows across columns 1 and 2
disp('F(:,1:2) = '); disp(F(:,1:2));
% Display rows 1 and 2 across columns 2 and 3
disp('F(1:2,2:3) = '); disp(F(1:2,2:3));