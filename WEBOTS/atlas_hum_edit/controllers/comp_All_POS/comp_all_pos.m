clear all
clc
file = '500X2S_LUL.mat';
load(file)
x=1:length(BackLbz);
t=x/10;
% plot 3 back 1 neck
figure;
subplot(2,2,1)
load(file)
f=BackLbz;
load('NOFORCE.mat')
i=BackLbz;
diff= f-i;
plot(t,rad2deg(diff))
title('BackLbz')
subplot(2,2,2)
load(file)
f=BackMby;
load('NOFORCE.mat')
i=BackMby;
diff= f-i;
plot(t,rad2deg(diff))
title('BackMby')
subplot(2,2,3)
load(file)
f=BackUbx;
load('NOFORCE.mat')
i=BackUbx;
diff= f-i;
plot(t,rad2deg(diff))
title('BackUbx')
subplot(2,2,4)
load(file)
f=NeckAy;
load('NOFORCE.mat')
i=NeckAy;
diff= f-i;
plot(t,rad2deg(diff))
title('NeckAy')

% plot 6 LArm 6 RArm
figure;
subplot(2,6,1)
load(file)
f=LArmElx;
load('NOFORCE.mat')
i=LArmElx;
diff= f-i;
plot(t,rad2deg(diff))
title('LArmElx')
subplot(2,6,2)
load(file)
f=LArmEly;
load('NOFORCE.mat')
i=LArmEly;
diff= f-i;
plot(t,rad2deg(diff))
title('LArmEly')
subplot(2,6,3)
load(file)
f=LArmMwx;
load('NOFORCE.mat')
i=LArmMwx;
diff= f-i;
plot(t,rad2deg(diff))
title('LArmMwx')
subplot(2,6,4)
load(file)
f=LArmShx;
%plot(t,rad2deg(f))
%hold on
load('NOFORCE.mat')
i=LArmShx;
%plot(t,rad2deg(i))
%hold on
diff= f-i;
plot(t,rad2deg(diff))
title('LArmShx')
subplot(2,6,5)
load(file)
f=LArmUsy;
load('NOFORCE.mat')
i=LArmUsy;
diff= f-i;
plot(t,rad2deg(diff))
title('LArmUsy')
subplot(2,6,6)
load(file)
f=LArmUwy;
load('NOFORCE.mat')
i=LArmUwy;
diff= f-i;
plot(t,rad2deg(diff))
title('LArmUwy')
subplot(2,6,7)
load(file)
f=RArmElx;
load('NOFORCE.mat')
i=RArmElx;
diff= f-i;
plot(t,rad2deg(diff))
title('RArmElx')
subplot(2,6,8)
load(file)
f=RArmEly;
load('NOFORCE.mat')
i=RArmEly;
diff= f-i;
plot(t,rad2deg(diff))
title('RArmEly')
subplot(2,6,9)
load(file)
f=RArmMwx;
load('NOFORCE.mat')
i=RArmMwx;
diff= f-i;
plot(t,rad2deg(diff))
title('RArmMwx')
subplot(2,6,10)
load(file)
f=RArmShx;
%plot(t,rad2deg(f))
%hold on
load('NOFORCE.mat')
i=RArmShx;
%plot(t,rad2deg(i))
%hold on
diff= f-i;
plot(t,rad2deg(diff))
title('RArmShx')
subplot(2,6,11)
load(file)
f=RArmUsy;
load('NOFORCE.mat')
i=RArmUsy;
diff= f-i;
plot(t,rad2deg(diff))
title('RArmUsy')
subplot(2,6,12)
load(file)
f=RArmUwy;
load('NOFORCE.mat')
i=RArmUwy;
diff= f-i;
plot(t,rad2deg(diff))
title('RArmUwy')

% plot 6 LLeg 6 RLeg
figure;
subplot(2,6,1)
load(file)
f=LLegKny;
load('NOFORCE.mat')
i=LLegKny;
diff= f-i;
plot(t,rad2deg(diff))
title('LLegKny')
subplot(2,6,2)
load(file)
f=LLegLax;
load('NOFORCE.mat')
i=LLegLax;
diff= f-i;
plot(t,rad2deg(diff))
title('LLegLax')
subplot(2,6,3)
load(file)
f=LLegLhy;
load('NOFORCE.mat')
i=LLegLhy;
diff= f-i;
plot(t,rad2deg(diff))
title('LLegLhy')
subplot(2,6,4)
load(file)
f=LLegMhx;
load('NOFORCE.mat')
i=LLegMhx;
diff= f-i;
plot(t,rad2deg(diff))
title('LLegMhx')
subplot(2,6,5)
load(file)
f=LLegUay;
load('NOFORCE.mat')
i=LLegUay;
diff= f-i;
plot(t,rad2deg(diff))
title('LLegUay')
subplot(2,6,6)
load(file)
f=LLegUhz;
load('NOFORCE.mat')
i=LLegUhz;
diff= f-i;
plot(t,rad2deg(diff))
title('LLegUhz')
subplot(2,6,7)
load(file)
f=RLegKny;
load('NOFORCE.mat')
i=RLegKny;
diff= f-i;
plot(t,rad2deg(diff))
title('RLegKny')
subplot(2,6,8)
load(file)
f=RLegLax;
load('NOFORCE.mat')
i=RLegLax;
diff= f-i;
plot(t,rad2deg(diff))
title('RLegLax')
subplot(2,6,9)
load(file)
f=RLegLhy;
load('NOFORCE.mat')
i=RLegLhy;
diff= f-i;
plot(t,rad2deg(diff))
title('RLegLhy')
subplot(2,6,10)
load(file)
f=RLegMhx;
load('NOFORCE.mat')
i=RLegMhx;
diff= f-i;
plot(t,rad2deg(diff))
title('RLegMhx')
subplot(2,6,11)
load(file)
f=RLegUay;
load('NOFORCE.mat')
i=RLegUay;
diff= f-i;
plot(t,rad2deg(diff))
title('RLegUay')
subplot(2,6,12)
load(file)
f=RLegUhz;
load('NOFORCE.mat')
i=RLegUhz;
diff= f-i;
plot(t,rad2deg(diff))
title('RLegUhz')
