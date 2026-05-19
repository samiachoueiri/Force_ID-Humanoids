clc
clear all
RLL = load('2000X2S_RLL1.mat');
S = RLL.BackLbz;

format shortEng
%mean
M = mean(S);
%standar deviantion
SD = std(S);
%mean frequency
F = meanfreq(S);
%variation
V = var (S);
%skewness
SK = skewness(S);
%kurtosis
K = kurtosis(S);
%max value
max = max(S);
%min value
min = min(S);
%median
MD = median(S);
ft = [M SD F V SK K max min]

figure;
subplot(1,2,1)
plot(S)
subplot(1,2,2)
str = {'M','SD','F','V','SK','K','max','min'};
bar(ft)
set(gca,'xticklabel',str)
set(gca, 'YScale', 'log')





