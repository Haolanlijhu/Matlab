% Matrix Operators
% Code
clear all;
clc;

A = [1,2;3,4];
B = [5,6;7,8];

C = A';
D = inv(B);

E = A + B;
F = A - B;
G = A * B;
H = A .* B;
I = A / B;
J = A ./ B; 
K = A * inv(B);

L = A^2;
M = A.^2;

N = A \ B ;
O = A .\ B;

disp('A = ');disp(A);
disp('B = ');disp(B);
disp('Transpose of A = ');disp(C);
disp('Inverse of B = ');disp(D);
disp('A + B = ');disp(E);
disp('A − B = ');disp(F);
disp('A * B = ');disp(G);
disp('A .* B = ');disp(H);
disp('A / B = ');disp(I);
disp('A ./ B = ');disp(J);
disp('A * inv(B) = ');disp(K);
disp('Aˆ2 = ');disp(L);
disp('A.ˆ2 = ');disp(M);
disp('A \ B = inv(A) * B = ');disp(N);
disp('A .\ B = ');disp(O);
