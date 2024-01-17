% Computing Correlations in MATLAB
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
trend_gdp_HP = hpfilter(gdp,1600);
trend_consumption_HP = hpfilter(consumption,1600);
trend_investment_HP = hpfilter(investment,1600);

% Detrend the HP filtered data
detrended_gdp_HP = gdp - trend_gdp_HP;
detrended_consumption_HP = consumption - trend_consumption_HP;
detrended_investment_HP = investment - trend_investment_HP;

% BP filter the data
detrended_gdp_BP = bandpass(gdp,6,32);
detrended_consumption_BP = bandpass(consumption,6,32);
detrended_investment_BP = bandpass(investment,6,32);

% Detrend the BP filtered data
trend_gdp_BP = gdp - detrended_gdp_BP;
trend_consumption_BP = consumption - detrended_consumption_BP;
trend_investment_BP = investment - detrended_investment_BP;

% Construct a matrix of HP and BP filtered data
detrended_HP=[detrended_gdp_HP,detrended_consumption_HP,detrended_investment_HP];
detrended_BP=[detrended_gdp_BP,detrended_consumption_BP,detrended_investment_BP];

% Construct a table of autocorrelations
autocorr_HP=zeros(1,3); % Construct matrix of zeros
   for j=1:3 % Loop over GDP, Consumption and Investment
       autocorr_HP(1,j)=xcorr(detrended_HP(1:end-1,j),detrended_HP(2:end,j),0,'Coeff');
   end
autocorr_BP=zeros(1,3); % Construct row vector of zeros
   for j=1:3 % Loop over GDP, Consumption and Investment
       autocorr_BP(1,j)=xcorr(detrended_BP(1:end-1,j),detrended_BP(2:end,j),0,'Coeff');
   end

% Display the tables of autocorrelations for HP and BP filtered data
disp('HP−Filtered Autocorrelations: GDP, Consumption, Investment');disp(autocorr_HP);
disp('BP−Filtered Autocorrelations: GDP, Consumption, Investment');disp(autocorr_BP);

% Construct a table of GDP correlations using xcorr() or corr()
% −− Both will yield the same results
gdpcorr_HP=zeros(1,3);

  for j=1:3
  % gdpcorr_HP(:,j)=xcorr(detrended_HP(1:end,j),detrended_gdp_HP(1:end),0,'Coeff');
    gdpcorr_HP(:,j)=corr(detrended_HP(:,j),detrended_gdp_HP);
  end

gdpcorr_BP=zeros(1,3);
  for j=1:3
  % gdpcorr_BP(:,j)=xcorr(detrended_BP(1:end,j),detrended_gdp_BP(1:end),0,'Coeff');
    gdpcorr_BP(:,j)=corr(detrended_BP(:,j),detrended_gdp_BP);
  end

% Display the tables of GDP correlations for HP and BP filtered data
disp('HP−Filtered GDP Correlations: GDP, Consumption, Investment');disp(gdpcorr_HP);
disp('BP−Filtered GDP Correlations: GDP, Consumption, Investment');disp(gdpcorr_BP);