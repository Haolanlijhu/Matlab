% Graphs
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

figure(1);
plot(log_gdp, 'r-');
title('Log GDP');

figure(2);
plot(log_consumption, 'b--');
title('Log Consumption');

figure(3);
plot(log_investment, ':');
title('Log Investment');

figure(4);
plot(log_data);
legend('Log GDP', 'Log Consumption', 'Log Investment');
title('Log GDP, Consumption and Investment');

% Create a figure with multiple plots
figure(5);
% Plot 1: Log GDP
subplot(3,1,1);
plot(log_gdp,'r-');
title('Log GDP');
% Plot 2: Log Consumption
subplot(3,1,2);
plot(log_consumption,'b--');
title('Log Consumption');
% Plot 3: Log Investment
subplot(3,1,3);
plot(log_investment,':');
title('Log Investment');

figure(6);
% Plot 1: Log GDP
subplot(1,3,1);
plot(log_gdp,'r-');
title('Log GDP');
% Plot 2: Log Consumption
subplot(1,3,2);
plot(log_consumption,'b--');
title('Log Consumption');
% Plot 3: Log Investment
subplot(1,3,3);
plot(log_investment,':');
title('Log Investment');