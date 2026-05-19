t = (-1:0.01:1)';
impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
window = [zeros(1,101), ones(1,50), zeros(1,50)]';
figure;
subplot(2,2,1)
plot(t,impulse)
title('Impulse')
xlabel('Time') 
ylabel('Force')
subplot(2,2,2)
plot(t,unitstep)
title('Unit Step')
xlabel('Time') 
ylabel('Force')
subplot(2,2,3)
plot(t,ramp)
title('Ramp')
xlabel('Time') 
ylabel('Force')
subplot(2,2,4)
plot(t,window)
title('Rectangular Function')
xlabel('Time') 
ylabel('Force')


t = (-1:0.01:3)';
window = [zeros(1,101), ones(1,200), zeros(1,100)]';
figure
plot(t,window)
title('Rectangular Function')
xlabel('Time') 
ylabel('Force')
