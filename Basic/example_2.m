% FSOLVE command Example 1
% Code

clear all;
clc;

% Set the parameter values
ALPHA1=2; ALPHA2=-1; BETA1=-1; BETA2=2; GAMMA1=-1; GAMMA2=-1;
% Define the parameter vector
p = [ALPHA1; BETA1; GAMMA1; ALPHA2; BETA2; GAMMA2];
% Guess an initial value for the solution
x0 = [-5; -5];
% Option to display output
options=optimset('Display','iter');
% Call the function
x = fsolve(@myfun_2,x0,options,p);
disp('x = '); disp(x);

% Set the parameter values
BETA2=1.5;
% Redefine the parameter vector
p = [ALPHA1; BETA1; GAMMA1; ALPHA2; BETA2; GAMMA2];
% Call the function
x = fsolve(@myfun_2,x0,options,p);
disp('x = '); disp(x);
