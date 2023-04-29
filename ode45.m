
clc
clear
close all
%%
h=0.1;
t0=0;
tF=0.7;
x0=0.5;
y0=-0.5;

t=t0:h:tF;

[t,y]=ode45(@(t,y)[-y(1)+6*y(2);-y(2)+4*y(1)],...
    [t0,tF],[x0,y0]);
figure(1)
plot(t,y)