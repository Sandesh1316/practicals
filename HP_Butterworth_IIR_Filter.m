% Butterworth High pass filter
clc;
clear all;
close all;
rp=input('enter passband ripple:');
rs=input('enter the stopband ripple:');
fp=input('enter passband freq:');
fs=input('enter stopband freq:');
f=input('enter sampling freq:');
wp=2*fp/f;
ws=2*fs/f;
[n,wn]=buttord(wp,ws,rp,rs);
[b,a]=butter(n,wn,'high');
w=0:0.01:pi;
h=freqz(b,a,w);
m=20*log10(abs(h));
p=angle(h);

subplot(2,1,1)
plot(m);
title('magnitude response of IIR High Pass filter');
xlabel('Normalized Freq.-->');
ylabel('Gain in dB-->');

subplot(2,1,2)
plot(p)
title('phase response of IIR High Pass filter');
xlabel('Normalized Freq.-->');
ylabel('Phase in radian-->');