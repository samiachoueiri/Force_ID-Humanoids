clear all
clc
load('RLL2KX2S.mat')
size = size(BackLbz);
index = size(1);


% plot 3 back 1 neck
figure;
subplot(2,2,1)
for SAMPLE= 1:index
hold on
plot(BackLbz(SAMPLE,:))
end
title('BackLbz')
subplot(2,2,2)
for SAMPLE= 1:index
plot(BackMby(SAMPLE,:))
hold on
end
title('BackMby')
subplot(2,2,3)
for SAMPLE= 1:index
plot(BackUbx(SAMPLE,:))
hold on
end
title('BackUbx')
subplot(2,2,4)
for SAMPLE= 1:index
plot(NeckAy(SAMPLE,:))
hold on
end
title('NeckAy')

% plot 6 LArm 6 RArm
figure;
subplot(2,6,1)
for SAMPLE= 1:index
plot (LArmElx(SAMPLE,:))
hold on
end
title('LArmElx')
subplot(2,6,2)
for SAMPLE= 1:index
plot (LArmEly(SAMPLE,:))
hold on
end
title('LArmEly')
subplot(2,6,3)
for SAMPLE= 1:index
plot (LArmMwx(SAMPLE,:))
hold on
end
title('LArmMwx')
subplot(2,6,4)
for SAMPLE= 1:index
plot (LArmShx(SAMPLE,:))
hold on
end
title('LArmShx')
subplot(2,6,5)
for SAMPLE= 1:index
plot (LArmUsy(SAMPLE,:))
hold on
end
title('LArmUsy')
subplot(2,6,6)
for SAMPLE= 1:index
plot (LArmUwy(SAMPLE,:))
hold on
end
title('LArmUwy')
subplot(2,6,7)
for SAMPLE= 1:index
plot (RArmElx(SAMPLE,:))
hold on
end
title('RArmElx')
subplot(2,6,8)
for SAMPLE= 1:index
plot (RArmEly(SAMPLE,:))
hold on
end
title('RArmEly')
subplot(2,6,9)
for SAMPLE= 1:index
plot (RArmMwx(SAMPLE,:))
hold on
end
title('RArmMwx')
subplot(2,6,10)
for SAMPLE= 1:index
plot (RArmShx(SAMPLE,:))
hold on
end
title('RArmShx')
subplot(2,6,11)
for SAMPLE= 1:index
plot (RArmUsy(SAMPLE,:))
hold on
end
title('RArmUsy')
subplot(2,6,12)
for SAMPLE= 1:index
plot (RArmUwy(SAMPLE,:))
hold on
end
title('RArmUwy')

% plot 6 LLeg 6 RLeg
figure;
subplot(2,6,1)
for SAMPLE= 1:index
plot (LLegKny(SAMPLE,:))
hold on
end
title('LLegKny')
subplot(2,6,2)
for SAMPLE= 1:index
plot (LLegLax(SAMPLE,:))
hold on
end
title('LLegLax')
subplot(2,6,3)
for SAMPLE= 1:index
plot (LLegLhy(SAMPLE,:))
hold on
end
title('LLegLhy')
subplot(2,6,4)
for SAMPLE= 1:index
plot (LLegMhx(SAMPLE,:))
hold on
end
title('LLegMhx')
subplot(2,6,5)
for SAMPLE= 1:index
plot (LLegUay(SAMPLE,:))
hold on
end
title('LLegUay')
subplot(2,6,6)
for SAMPLE= 1:index
plot (LLegUhz(SAMPLE,:))
hold on
end
title('LLegUhz')
subplot(2,6,7)
for SAMPLE= 1:index
plot (RLegKny(SAMPLE,:))
hold on
end
title('RLegKny')
subplot(2,6,8)
for SAMPLE= 1:index
plot (RLegLax(SAMPLE,:))
hold on
end
title('RLegLax')
subplot(2,6,9)
for SAMPLE= 1:index
plot (RLegLhy(SAMPLE,:))
hold on
end
title('RLegLhy')
subplot(2,6,10)
for SAMPLE= 1:index
plot (RLegMhx(SAMPLE,:))
hold on
end
title('RLegMhx')
subplot(2,6,11)
for SAMPLE= 1:index
plot (RLegUay(SAMPLE,:))
hold on
end
title('RLegUay')
subplot(2,6,12)
for SAMPLE= 1:index
plot (RLegUhz(SAMPLE,:))
hold on
end
title('RLegUhz')
