clc
clear all
%get sensor data 
LSCAP=load('0__500X2S_LSCAP_B5S.mat');
RSCAP=load('0__500X2S_RSCAP_B5S.mat');
PELVIS=load('0__750X2S_PELVIS_B5S.mat');
TORSO=load('0__750X2S_TORSO_B5S.mat');
LLL=load('0__2000X2S_LLL_B5S.mat');
RLL=load('0__2000X2S_RLL_B5S.mat');
%get forces
F_LSCAP=load('F_LSCAP.mat');
F_RSCAP=load('F_RSCAP.mat');
F_PELVIS=load('F_PELVIS.mat');
F_TORSO=load('F_TORSO.mat');
F_LLL=load('F_LLL.mat');
F_RLL=load('F_RLL.mat');
%get location
L_LSCAP=load('L_LSCAP.mat');
L_RSCAP=load('L_RSCAP.mat');
L_PELVIS=load('L_PELVIS.mat');
L_TORSO=load('L_TORSO.mat');
L_LLL=load('L_LLL.mat');
L_RLL=load('L_RLL.mat');

sensor =["BackLbz" "BackMby" "BackUbx" "NeckAy" "LArmElx" "LArmMwx" "LArmUwy" "RArmElx" "RArmMwx" "RArmUwy" ...
    "LLegKny" "LLegLhy" "LLegMhx" "LLegUay" "RLegKny" "RLegLhy" "RLegMhx" "RLegUay"];
%LSCAP
m=1;
sd=2;
f=3;
FE=0;
%number of samples / number of readings 
[ns,nr] = size(LSCAP.BackLbz);
%loop all samples
for i=1:ns
    %loop all sensors
    for j=1:18
        sen=sensor(j);
        %sample is node.sensor(sample_index, all col)
        S=LSCAP.(sen)(i,:);
        M = mean(S);
        SD = std(S);
        F = meanfreq(S);
        FE(i,m)=M;
        FE(i,sd)=SD;
        FE(i,f)=F;
        m=m+3;
        sd=sd+3;
        f=f+3;
    end
    m=1;
    sd=2;
    f=3;
end
FE_LSCAP=FE;


%RSCAP
m=1;
sd=2;
f=3;
FE=0;
%number of samples / number of readings 
[ns,nr] = size(RSCAP.BackLbz);
%loop all samples
for i=1:ns
    %loop all sensors
    for j=1:18
        sen=sensor(j);
        %sample is node.sensor(sample_index, all col)
        S=RSCAP.(sen)(i,:);
        M = mean(S);
        SD = std(S);
        F = meanfreq(S);
        FE(i,m)=M;
        FE(i,sd)=SD;
        FE(i,f)=F;
        m=m+3;
        sd=sd+3;
        f=f+3;
    end
    m=1;
    sd=2;
    f=3;
end
FE_RSCAP=FE;

%PELVIS
m=1;
sd=2;
f=3;
FE=0;
%number of samples / number of readings 
[ns,nr] = size(PELVIS.BackLbz);
%loop all samples
for i=1:ns
    %loop all sensors
    for j=1:18
        sen=sensor(j);
        %sample is node.sensor(sample_index, all col)
        S=PELVIS.(sen)(i,:);
        M = mean(S);
        SD = std(S);
        F = meanfreq(S);
        FE(i,m)=M;
        FE(i,sd)=SD;
        FE(i,f)=F;
        m=m+3;
        sd=sd+3;
        f=f+3;
    end
    m=1;
    sd=2;
    f=3;
end
FE_PELVIS=FE;

%TORSO
m=1;
sd=2;
f=3;
FE=0;
%number of samples / number of readings 
[ns,nr] = size(TORSO.BackLbz);
%loop all samples
for i=1:ns
    %loop all sensors
    for j=1:18
        sen=sensor(j);
        %sample is node.sensor(sample_index, all col)
        S=TORSO.(sen)(i,:);
        M = mean(S);
        SD = std(S);
        F = meanfreq(S);
        FE(i,m)=M;
        FE(i,sd)=SD;
        FE(i,f)=F;
        m=m+3;
        sd=sd+3;
        f=f+3;
    end
    m=1;
    sd=2;
    f=3;
end
FE_TORSO=FE;

%LLL
m=1;
sd=2;
f=3;
FE=0;
%number of samples / number of readings 
[ns,nr] = size(LLL.BackLbz);
%loop all samples
for i=1:ns
    %loop all sensors
    for j=1:18
        sen=sensor(j);
        %sample is node.sensor(sample_index, all col)
        S=LLL.(sen)(i,:);
        M = mean(S);
        SD = std(S);
        F = meanfreq(S);
        FE(i,m)=M;
        FE(i,sd)=SD;
        FE(i,f)=F;
        m=m+3;
        sd=sd+3;
        f=f+3;
    end
    m=1;
    sd=2;
    f=3;
end
FE_LLL=FE;

%RLL
m=1;
sd=2;
f=3;
FE=0;
%number of samples / number of readings 
[ns,nr] = size(RLL.BackLbz);
%loop all samples
for i=1:ns
    %loop all sensors
    for j=1:18
        sen=sensor(j);
        %sample is node.sensor(sample_index, all col)
        S=RLL.(sen)(i,:);
        M = mean(S);
        SD = std(S);
        F = meanfreq(S);
        FE(i,m)=M;
        FE(i,sd)=SD;
        FE(i,f)=F;
        m=m+3;
        sd=sd+3;
        f=f+3;
    end
    m=1;
    sd=2;
    f=3;
end
FE_RLL=FE;

%%%%%%%%%%%%%%%%%%%%%%% putting data together

all_data = [ FE_LSCAP F_LSCAP.F; ...
    FE_RSCAP F_RSCAP.F;...
    FE_PELVIS F_PELVIS.F; ...
    FE_TORSO F_TORSO.F; ...
    FE_LLL F_LLL.F; ...
    FE_RLL F_RLL.F];
loc_data = [L_LSCAP.L; L_RSCAP.L; L_PELVIS.L; L_TORSO.L; L_LLL.L; L_RLL.L];
xlswrite('all_data.xlsx',all_data)
xlswrite('loc_data.xlsx',loc_data)

%the DATASET excel sheet was manualy arranged 
DATADET= readtable('DATASET.xlsx');
