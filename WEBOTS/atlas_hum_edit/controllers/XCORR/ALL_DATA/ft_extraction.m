clc
clear all
ALL_SAMPLES = ["100X2S_LLL.mat" "100X2S_LSCAP.mat" "100X2S_PELVIS.mat" "100X2S_RLL.mat" "100X2S_RSCAP.mat" "100X2S_TORSO.mat" ...
    "200X2S_LLL.mat" "200X2S_LSCAP.mat" "200X2S_PELVIS.mat" "200X2S_RLL.mat" "200X2S_RSCAP.mat" "200X2S_TORSO.mat" ...
    "300X2S_LLL.mat" "300X2S_LSCAP.mat" "300X2S_PELVIS.mat" "300X2S_RLL.mat" "300X2S_RSCAP.mat" "300X2S_TORSO.mat"...
    "400X2S_LLL.mat" "400X2S_LSCAP.mat" "400X2S_PELVIS.mat" "400X2S_RLL.mat" "400X2S_RSCAP.mat" "400X2S_TORSO.mat"...
    "500X2S_LLL.mat" "500X2S_LSCAP.mat" "500X2S_PELVIS.mat" "500X2S_RLL.mat" "500X2S_RSCAP.mat" "500X2S_TORSO.mat"...
    "750X2S_LLL.mat" "750X2S_PELVIS.mat" "750X2S_RLL.mat" "750X2S_TORSO.mat"...
    "1000X2S_LLL.mat" "1000X2S_RLL.mat" ...
    "2000X2S_LLL.mat" "2000X2S_RLL.mat"];
FORCE = [100 100 100 100 100 100 200 200 200 200 200 200 300 300 300 300 300 300 400 400 400 400 400 400 500 500 500 500 500 500 ...
    750 750 750 750 1000 1000 2000 2000]';
POSITION = ["LLL" "LSCAP" "PELVIS" "RLL" "RSCAP" "TORSO"...
    "LLL" "LSCAP" "PELVIS" "RLL" "RSCAP" "TORSO"...
    "LLL" "LSCAP" "PELVIS" "RLL" "RSCAP" "TORSO"...
    "LLL" "LSCAP" "PELVIS" "RLL" "RSCAP" "TORSO"...
    "LLL" "LSCAP" "PELVIS" "RLL" "RSCAP" "TORSO"...
    "LLL" "PELVIS" "RLL" "TORSO"...
    "LLL" "RLL" ...
    "LLL" "RLL"]';

sensor =["BackLbz" "BackMby" "BackUbx" "NeckAy" "LArmElx" "LArmMwx" "LArmUwy" "RArmElx" "RArmMwx" "RArmUwy" ...
    "LLegKny" "LLegLhy" "LLegMhx" "LLegUay" "RLegKny" "RLegLhy" "RLegMhx" "RLegUay"];

for x = 1:length(ALL_SAMPLES)
sample = load(ALL_SAMPLES(x));
for i=1:18
sensor_index= sensor(i);
S= sample.(sensor_index);
format shortEng
M = mean(S);
SD = std(S);
F = meanfreq(S);
ft= [M SD F];

if i==1
    feat_per_sample = ft;
else
    feat_per_sample = [feat_per_sample ft];
end
end
if x==1
    features = feat_per_sample;
else
    features = [features; feat_per_sample];
end
end
save ('features');
xlswrite('features', features)
xlswrite('forces', FORCE)
xlswrite('positions', POSITION)

%DATASET.xlsx is created manually

DATADET= readtable('DATASET.xlsx');
