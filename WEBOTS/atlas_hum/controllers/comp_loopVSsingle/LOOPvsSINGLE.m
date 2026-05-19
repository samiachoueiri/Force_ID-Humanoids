clear all
clc

load('RLL2KX2S_B5S.mat')
BACKloop = BackLbz;
size = size(BackLbz);
index = size(1);
load('RLL2000X2S.mat')
BACK2000 = BackLbz;
load('RLL2100X2S.mat')
BACK2100 = BackLbz;
load('RLL2200X2S.mat')
BACK2200 = BackLbz;
load('RLL2300X2S.mat')
BACK2300 = BackLbz;
load('RLL2400X2S.mat')
BACK2400 = BackLbz;

figure;
subplot(2,3,1)
plot(BACKloop(1,:))
hold on
plot(BACK2000(1,:))
title('2K')
subplot(2,3,2)
plot(BACKloop(2,:))
hold on
plot(BACK2100(1,:))
title('2.1K')
subplot(2,3,3)
plot(BACKloop(3,:))
hold on
plot(BACK2200(1,:))
title('2.2K')
subplot(2,3,4)
plot(BACKloop(4,:))
hold on
plot(BACK2300(1,:))
title('2.3K')
subplot(2,3,5)
plot(BACKloop(5,:))
hold on
plot(BACK2400(1,:))
title('2.4K')
