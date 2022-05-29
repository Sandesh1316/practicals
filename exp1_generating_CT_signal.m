close all;
clear all;
clc;

% a program for generating standard signals
tmin = -5;
dt = 0.1;
tmax = 5;

t = tmin:dt:tmax;

%% Unit Impulse Signal
x1 = 2;
x2 = 0;
x = x1.*(t==0) + x2.*(t~=0);
subplot(3,3,1);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Unit Imples Signal');
grid on
%% Unit Step Signal
x1 = 1;
x2 = 0;
x = x1.*(t>=0) + x2.*(t<=0);
subplot(3,3,2);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Unit Step Signal');
grid on
%% Unit Ramp Signal
x1 = t;
x2 = 0;
x = x1.*(t>=0) + x2.*(t<=0);
subplot(3,3,3);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Unit Ramp Signal');
grid on
%% Parabolic Signal
A = 0.4;
x1 = (A*(t.^2)/2);
x2 = (A*(t.^2)/2);
x = x1.*(t>=0)+ x2.*(t<=0);
subplot(3,3,4);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Parabolic Signal');
grid on
%% Sinusoidal Signal
T = 2;
F = 1/T;
x = sin(2*pi*F*t);
subplot(3,3,5);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Sinusoidal signal');
grid on
%% Triangular Signal
a = 2;
x1 = 1-abs(t)/2;
x2 = 0;
x = x1.*(abs(t)<a) + x2.*(abs(t)>a);
subplot(3,3,6);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Triangular Signal');
grid on
%% Signam Signal
figure;
x1 = 1;
x2 = 0;
x3 = -1;
x = x1.*(t>0)+x2.*(t==0)+x3.*(t<0);
subplot(3,3,7)
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Signum Signal');
grid on
%% Sinc Signal
x = sinc(t);
subplot(3,3,8);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Sinc Signal')
grid on
%% Guassian Signal
a = 2;
x = exp(-a.*(t.^2));
subplot(3,3,9);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('Guassian Signal');
grid on

%%





