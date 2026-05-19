close all
A=ones(50,1);
B=5*ones(50,1);
C=3*ones(50,1);

figure;
hold all
plot(A)
plot(B)
plot(C)
xc1= xcorr(A,B);
xc2= xcorr(A,C);
xc_OL1=xc((size(xc1,2)+1)/2);
xc_OL2=xc((size(xc2,2)+1)/2);

FULL=norm(A)*norm(C);
%should i take the abs?
per_sim=(xc_OL/FULL)*100;
