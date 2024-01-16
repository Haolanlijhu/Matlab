% Matrix Functions
% Code

clear all;
clc;

A = [1; 2; 3; 4];
B = [5; 6; 7; 8];

C = horzcat(A,B);
D = vertcat(A,B);

E = size(C);
F = size(D);

G = zeros(3,2);
H = ones(5,3);

disp('A = '); disp(A);
disp('B = '); disp(B);

disp('C: Horizontal Concatenation of A and B = '); disp(C);
disp('C: Vertical Concatenation of A and B = '); disp(D);

disp('E: Dimension of C = '); disp(E);
disp('F: Dimension of D = '); disp(F);

disp('G: Matrix of zeros = '); disp(G);
disp('H: Matrix of ones = '); disp(H);


