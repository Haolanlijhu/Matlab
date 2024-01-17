% Hodrick-Prescott Filter
% Code

clear all;
clc;

% Import data from Excel
data = readmatrix("qdata.xls");
% Take logarithms of the data
data = log(data);

gdp = data(:,1);
consumption = data(:,2);
investment = data(:,3);

% HP filter the data
trend_gdp = hpfilter(gdp,1600);
trend_consumption = hpfilter(consumption,1600);
trend_investment = hpfilter(investment,1600);

% Detrend the data
detrended_gdp = gdp - trend_gdp;
detrended_consumption = consumption - trend_consumption;
detrended_investment = investment - trend_investment;

% Create a matrix with all detrended data: GDP, Consumption and Investment
detrended_data = horzcat(detrended_gdp, detrended_consumption,detrended_investment);

% Compute standard devations
std_all = std(detrended_data);
std_before_1984 = std(detrended_data(1:148,:));
std_after_1984 = std(detrended_data(149:255,:));

% Compute correlations
corr_all = corr(detrended_data);

% Display Standard Deviations
disp('Std Devn (1947−2010): GDP, Consumption, Investment'); disp(std_all);
disp('Std Devn (1947−1984): GDP, Consumption, Investment'); disp(std_before_1984);
disp('Std Devn (1984−2010): GDP, Consumption, Investment'); disp(std_after_1984);

% Display cross−correlations
disp('Cross−correlations: GDP, Consumption, Investment'); disp(corr_all);

% Plot figure
figure(1);

subplot(3,3,1);
plot(gdp);
title('GDP');

subplot(3,3,2);
plot(consumption);
title('Consumption');

subplot(3,3,3);
plot(investment);
title('Investment');

subplot(3,3,4);
plot(trend_gdp);
title('Trend GDP');

subplot(3,3,5);
plot(trend_consumption);
title('Trend Consumption');

subplot(3,3,6);
plot(trend_investment);
title('Trend Investment');

subplot(3,3,7);
plot(detrended_gdp);
title('Detrended GDP');

subplot(3,3,8);
plot(detrended_consumption);
title('Detrended Consumption');

subplot(3,3,9);
plot(detrended_investment);
title('Detrended Investment');





