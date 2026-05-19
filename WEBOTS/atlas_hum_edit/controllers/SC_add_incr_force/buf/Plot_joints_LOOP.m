clear all
clc
load('700_PELVIS.mat')
x=1:length(LLegLax);
t=x/10;
figure
plot(t,rad2deg(LLegLax))
title('F=700N')

clear all
load('700_PELVIS_B0.mat')
x=1:length(LLegLax);
t=x/10;
figure
plot(t,rad2deg(LLegLax(1,:)))
hold on
plot(t-0.2,rad2deg(LLegLax(2,:)),'--')
xlim([0 7])
title('F=700N Buffer 0')
legend('iteration 1','iteration 2')

clear all
load('700_PELVIS_B5.mat')
x=1:length(LLegLax);
t=x/10;
figure
plot(t,rad2deg(LLegLax(1,:)))
hold on
plot(t-0.2,rad2deg(LLegLax(2,:)),'--')
xlim([0 7])
title('F=700N Buffer 5s')
legend('iteration 1','iteration 2')

clear all
load('700_PELVIS_B10.mat')
x=1:length(LLegLax);
t=x/10;
figure
plot(t,rad2deg(LLegLax(1,:)))
hold on
plot(t-0.2,rad2deg(LLegLax(2,:)),'--')
xlim([0 7])
title('F=700N Buffer 10s')
legend('iteration 1','iteration 2')


