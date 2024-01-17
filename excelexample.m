% Importing data into MATLAB
% Code
clear all;
clc;

% Import data from Excel
data = readmatrix("qdata.xls");
% Take logarithms of the data
log_data = log(data);

log_gdp = log_data(:,1);
log_consumption = log_data(:,2);
log_investment = log_data(:,3);
disp('Log GDP = '); disp(log_gdp);
disp('Log Consumption = '); disp(log_consumption);
disp('Log Investment = '); disp(log_investment);

