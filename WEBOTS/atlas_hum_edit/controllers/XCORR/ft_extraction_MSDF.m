clc
clear all
sample = load('500X2S_TORSO.mat');
sensor =["BackLbz" "BackMby" "BackUbx" "NeckAy" "LArmElx" "LArmMwx" "LArmUwy" "RArmElx" "RArmMwx" "RArmUwy" "LLegKny" "LLegLhy" "LLegMhx" "LLegUay" "RLegKny" "RLegLhy" "RLegMhx" "RLegUay"];
figure;
for i=1:18
subplot(3,6,i)
sensor_index= sensor(i);
S= sample.(sensor_index);
x=1:length(S);
t=x/10;
plot(t,rad2deg(S));
title(sensor_index)
format shortEng
M = mean(S);
SD = std(S);
F = meanfreq(S);
if M<0
    NM =abs(M);
else
    NM =0;
end

ft= [M NM SD F];
if i==1
    feat = ft;
else
    feat = [feat;ft];
end
end
figure;
%temp=sign(feat).*log(abs(feat));
b=bar(feat);
legend('M','MN','SD','F')
set(gca, 'YScale', 'log')
% temp1=get(gca,'ytick');
% set(gca,'yticklabel',sign(temp1).*10.^abs(temp1))


