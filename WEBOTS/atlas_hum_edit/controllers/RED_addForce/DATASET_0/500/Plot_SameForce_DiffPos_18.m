clear all
clc


LLL=load('500X2S_LLL.mat');
RLL=load('500X2S_RLL.mat');
LSCAP=load('500X2S_LSCAP.mat');
RSCAP=load('500X2S_RSCAP.mat');
PELVIS=load('500X2S_PELVIS.mat');
TORSO=load('500X2S_TORSO.mat');
BackLbz = [LLL.BackLbz; RLL.BackLbz; LSCAP.BackLbz; RSCAP.BackLbz; PELVIS.BackLbz; TORSO.BackLbz];
BackMby = [LLL.BackMby; RLL.BackMby; LSCAP.BackMby; RSCAP.BackMby; PELVIS.BackMby; TORSO.BackMby];
BackUbx = [LLL.BackUbx; RLL.BackUbx; LSCAP.BackUbx; RSCAP.BackUbx; PELVIS.BackUbx; TORSO.BackUbx];
NeckAy = [LLL.NeckAy; RLL.NeckAy; LSCAP.NeckAy; RSCAP.NeckAy; PELVIS.NeckAy; TORSO.NeckAy];
LArmElx = [LLL.LArmElx; RLL.LArmElx; LSCAP.LArmElx; RSCAP.LArmElx; PELVIS.LArmElx; TORSO.LArmElx];
LArmMwx = [LLL.LArmMwx; RLL.LArmMwx; LSCAP.LArmMwx; RSCAP.LArmMwx; PELVIS.LArmMwx; TORSO.LArmMwx];
LArmShx = [LLL.LArmShx; RLL.LArmShx; LSCAP.LArmShx; RSCAP.LArmShx; PELVIS.LArmShx; TORSO.LArmShx];
RArmElx = [LLL.RArmElx; RLL.RArmElx; LSCAP.RArmElx; RSCAP.RArmElx; PELVIS.RArmElx; TORSO.RArmElx];
RArmMwx = [LLL.RArmMwx; RLL.RArmMwx; LSCAP.RArmMwx; RSCAP.RArmMwx; PELVIS.RArmMwx; TORSO.RArmMwx];
RArmShx = [LLL.RArmShx; RLL.RArmShx; LSCAP.RArmShx; RSCAP.RArmShx; PELVIS.RArmShx; TORSO.RArmShx];
LLegKny = [LLL.LLegKny; RLL.LLegKny; LSCAP.LLegKny; RSCAP.LLegKny; PELVIS.LLegKny; TORSO.LLegKny];
LLegLhy = [LLL.LLegLhy; RLL.LLegLhy; LSCAP.LLegLhy; RSCAP.LLegLhy; PELVIS.LLegLhy; TORSO.LLegLhy];
LLegMhx = [LLL.LLegMhx; RLL.LLegMhx; LSCAP.LLegMhx; RSCAP.LLegMhx; PELVIS.LLegMhx; TORSO.LLegMhx];
LLegUay = [LLL.LLegUay; RLL.LLegUay; LSCAP.LLegUay; RSCAP.LLegUay; PELVIS.LLegUay; TORSO.LLegUay];
RLegKny = [LLL.RLegKny; RLL.RLegKny; LSCAP.RLegKny; RSCAP.RLegKny; PELVIS.RLegKny; TORSO.RLegKny];
RLegLhy = [LLL.RLegLhy; RLL.RLegLhy; LSCAP.RLegLhy; RSCAP.RLegLhy; PELVIS.RLegLhy; TORSO.RLegLhy];
RLegMhx = [LLL.RLegMhx; RLL.RLegMhx; LSCAP.RLegMhx; RSCAP.RLegMhx; PELVIS.RLegMhx; TORSO.RLegMhx];
RLegUay = [LLL.RLegUay; RLL.RLegUay; LSCAP.RLegUay; RSCAP.RLegUay; PELVIS.RLegUay; TORSO.RLegUay];

size = size(BackLbz);
index = size(1);
x=1:length(BackLbz);
t=x/10;

% plot 3 back 1 neck
figure;
subplot(3,6,1)
for SAMPLE= 1:index
hold on
plot(t,rad2deg(BackLbz(SAMPLE,:)))
end
title('BackLbz')
subplot(3,6,2)
for SAMPLE= 1:index
plot(t,rad2deg(BackMby(SAMPLE,:)))
hold on
end
title('BackMby')
subplot(3,6,3)
for SAMPLE= 1:index
plot(t,rad2deg(BackUbx(SAMPLE,:)))
hold on
end
title('BackUbx')
subplot(3,6,4)
for SAMPLE= 1:index
plot(t,rad2deg(NeckAy(SAMPLE,:)))
hold on
end
title('NeckAy')

subplot(3,6,5)
for SAMPLE= 1:index
plot (t,rad2deg(LArmElx(SAMPLE,:)))
hold on
end
title('LArmElx')
subplot(3,6,6)
for SAMPLE= 1:index
plot (t,rad2deg(LArmMwx(SAMPLE,:)))
hold on
end
title('LArmMwx')
subplot(3,6,7)
for SAMPLE= 1:index
plot (t,rad2deg(LArmShx(SAMPLE,:)))
hold on
end
title('LArmShx')
subplot(3,6,8)
for SAMPLE= 1:index
plot (t,rad2deg(RArmElx(SAMPLE,:)))
hold on
end
title('RArmElx')
subplot(3,6,9)
for SAMPLE= 1:index
plot (t,rad2deg(RArmMwx(SAMPLE,:)))
hold on
end
title('RArmMwx')
subplot(3,6,10)
for SAMPLE= 1:index
plot (t,rad2deg(RArmShx(SAMPLE,:)))
hold on
end
title('RArmShx')

subplot(3,6,11)
for SAMPLE= 1:index
plot (t,rad2deg(LLegKny(SAMPLE,:)))
hold on
end
title('LLegKny')
subplot(3,6,12)
for SAMPLE= 1:index
plot (t,rad2deg(LLegLhy(SAMPLE,:)))
hold on
end
title('LLegLhy')
subplot(3,6,13)
for SAMPLE= 1:index
plot (t,rad2deg(LLegMhx(SAMPLE,:)))
hold on
end
title('LLegMhx')
subplot(3,6,14)
for SAMPLE= 1:index
plot (t,rad2deg(LLegUay(SAMPLE,:)))
hold on
end
title('LLegUay')
subplot(3,6,15)
for SAMPLE= 1:index
plot (t,rad2deg(RLegKny(SAMPLE,:)))
hold on
end
title('RLegKny')
subplot(3,6,16)
for SAMPLE= 1:index
plot (t,rad2deg(RLegLhy(SAMPLE,:)))
hold on
end
title('RLegLhy')
subplot(3,6,17)
for SAMPLE= 1:index
plot (t,rad2deg(RLegMhx(SAMPLE,:)))
hold on
end
title('RLegMhx')
subplot(3,6,18)
for SAMPLE= 1:index
plot (t,rad2deg(RLegUay(SAMPLE,:)))
hold on
end
title('RLegUay')
legend('LLL','RLL','LSCAP','RSCAP','PELVIS','TORSO');

