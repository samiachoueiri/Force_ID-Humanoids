clc
clear all
sample = load('500X2S_LLL.mat');
sensor =["BackLbz" "BackMby" "BackUbx" "NeckAy" "LArmElx" "LArmMwx" "LArmUwy" "RArmElx" "RArmMwx" "RArmUwy" "LLegKny" "LLegLhy" "LLegMhx" "LLegUay" "RLegKny" "RLegLhy" "RLegMhx" "RLegUay"];
size = size(sample.BackLbz);
index = size(1);
figure;
for i=1:18
subplot(3,6,i)
sensor_index= sensor(i);
S= sample.(sensor_index);
x=1:length(S);
t=x/10;
plot(t,rad2deg(S));
title(sensor_index)
end


