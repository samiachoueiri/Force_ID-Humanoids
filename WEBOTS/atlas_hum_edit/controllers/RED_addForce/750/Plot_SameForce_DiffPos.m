clear all
clc


LLL=load('750X2S_LLL.mat');
RLL=load('750X2S_RLL.mat');
%LSCAP=load('750X2S_LSCAP.mat');
%RSCAP=load('750X2S_RSCAP.mat');
PELVIS=load('750X2S_PELVIS.mat');
TORSO=load('750X2S_TORSO.mat');
BackLbz = [LLL.BackLbz; RLL.BackLbz; PELVIS.BackLbz; TORSO.BackLbz];
BackMby = [LLL.BackMby; RLL.BackMby; PELVIS.BackMby; TORSO.BackMby];
BackUbx = [LLL.BackUbx; RLL.BackUbx; PELVIS.BackUbx; TORSO.BackUbx];
NeckAy = [LLL.NeckAy; RLL.NeckAy; PELVIS.NeckAy; TORSO.NeckAy];
LArmElx = [LLL.LArmElx; RLL.LArmElx; PELVIS.LArmElx; TORSO.LArmElx];
LArmMwx = [LLL.LArmMwx; RLL.LArmMwx; PELVIS.LArmMwx; TORSO.LArmMwx];
LArmUwy = [LLL.LArmUwy; RLL.LArmUwy; PELVIS.LArmUwy; TORSO.LArmUwy];
RArmElx = [LLL.RArmElx; RLL.RArmElx; PELVIS.RArmElx; TORSO.RArmElx];
RArmMwx = [LLL.RArmMwx; RLL.RArmMwx; PELVIS.RArmMwx; TORSO.RArmMwx];
RArmUwy = [LLL.RArmUwy; RLL.RArmUwy; PELVIS.RArmUwy; TORSO.RArmUwy];
LLegKny = [LLL.LLegKny; RLL.LLegKny; PELVIS.LLegKny; TORSO.LLegKny];
LLegLhy = [LLL.LLegLhy; RLL.LLegLhy; PELVIS.LLegLhy; TORSO.LLegLhy];
LLegMhx = [LLL.LLegMhx; RLL.LLegMhx; PELVIS.LLegMhx; TORSO.LLegMhx];
LLegUay = [LLL.LLegUay; RLL.LLegUay; PELVIS.LLegUay; TORSO.LLegUay];
RLegKny = [LLL.RLegKny; RLL.RLegKny; PELVIS.RLegKny; TORSO.RLegKny];
RLegLhy = [LLL.RLegLhy; RLL.RLegLhy; PELVIS.RLegLhy; TORSO.RLegLhy];
RLegMhx = [LLL.RLegMhx; RLL.RLegMhx; PELVIS.RLegMhx; TORSO.RLegMhx];
RLegUay = [LLL.RLegUay; RLL.RLegUay; PELVIS.RLegUay; TORSO.RLegUay];

size = size(BackLbz);
index = size(1);
x=1:length(BackLbz);
t=x/10;

% plot 3 back 1 neck
figure;
subplot(2,2,1)
for SAMPLE= 1:index
hold on
plot(t,rad2deg(BackLbz(SAMPLE,:)))
end
title('BackLbz')
subplot(2,2,2)
for SAMPLE= 1:index
plot(t,rad2deg(BackMby(SAMPLE,:)))
hold on
end
title('BackMby')
subplot(2,2,3)
for SAMPLE= 1:index
plot(t,rad2deg(BackUbx(SAMPLE,:)))
hold on
end
title('BackUbx')
subplot(2,2,4)
for SAMPLE= 1:index
plot(t,rad2deg(NeckAy(SAMPLE,:)))
hold on
end
title('NeckAy')
legend('LLL','RLL','PELVIS','TORSO');

% plot 3 LArm 3 RArm
figure;
subplot(2,3,1)
for SAMPLE= 1:index
plot (t,rad2deg(LArmElx(SAMPLE,:)))
hold on
end
title('LArmElx')
subplot(2,3,2)
for SAMPLE= 1:index
plot (t,rad2deg(LArmMwx(SAMPLE,:)))
hold on
end
title('LArmMwx')
subplot(2,3,3)
for SAMPLE= 1:index
plot (t,rad2deg(LArmUwy(SAMPLE,:)))
hold on
end
title('LArmUwy')
subplot(2,3,4)
for SAMPLE= 1:index
plot (t,rad2deg(RArmElx(SAMPLE,:)))
hold on
end
title('RArmElx')
subplot(2,3,5)
for SAMPLE= 1:index
plot (t,rad2deg(RArmMwx(SAMPLE,:)))
hold on
end
title('RArmMwx')
subplot(2,3,6)
for SAMPLE= 1:index
plot (t,rad2deg(RArmUwy(SAMPLE,:)))
hold on
end
title('RArmUwy')
legend('LLL','RLL','PELVIS','TORSO');

% plot 4 LLeg 4 RLeg
figure;
subplot(2,4,1)
for SAMPLE= 1:index
plot (t,rad2deg(LLegKny(SAMPLE,:)))
hold on
end
title('LLegKny')
subplot(2,4,2)
for SAMPLE= 1:index
plot (t,rad2deg(LLegLhy(SAMPLE,:)))
hold on
end
title('LLegLhy')
subplot(2,4,3)
for SAMPLE= 1:index
plot (t,rad2deg(LLegMhx(SAMPLE,:)))
hold on
end
title('LLegMhx')
subplot(2,4,4)
for SAMPLE= 1:index
plot (t,rad2deg(LLegUay(SAMPLE,:)))
hold on
end
title('LLegUay')
subplot(2,4,5)
for SAMPLE= 1:index
plot (t,rad2deg(RLegKny(SAMPLE,:)))
hold on
end
title('RLegKny')
subplot(2,4,6)
for SAMPLE= 1:index
plot (t,rad2deg(RLegLhy(SAMPLE,:)))
hold on
end
title('RLegLhy')
subplot(2,4,7)
for SAMPLE= 1:index
plot (t,rad2deg(RLegMhx(SAMPLE,:)))
hold on
end
title('RLegMhx')
subplot(2,4,8)
for SAMPLE= 1:index
plot (t,rad2deg(RLegUay(SAMPLE,:)))
hold on
end
title('RLegUay')
legend('LLL','RLL','PELVIS','TORSO');

