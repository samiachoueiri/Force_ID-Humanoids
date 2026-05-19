clc
clear all

RLL1 = load('2000X2S_RLL1.mat');
RLL2 = load('2000X2S_RLL2.mat');
RLL3 = load('1000X2S_RLL.mat');
S1 = RLL1.BackLbz;
S2 = RLL2.BackLbz;
S3 = RLL3.BackLbz;

r= xcorr(S1,S2);
figure;
subplot(1,3,1)
plot(S1)
title('S1')
subplot(1,3,2)
plot(S2)
title('S2')
subplot(1,3,3)
plot(r)
title('r')

r= xcorr(S1,S3);
figure;
subplot(1,3,1)
plot(S1)
title('S1')
subplot(1,3,2)
plot(S3)
title('S3')
subplot(1,3,3)
plot(r)
title('r')
%%%%%%%%%%%%%^^^^^
z=xcorr(S1,S3);
z1=z((size(z,2)+1)/2);
zt=norm(S1)*norm(S3);
per_sim=(z1/zt)*100;