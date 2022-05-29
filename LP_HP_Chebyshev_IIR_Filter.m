%Chebyshev Low Pass Filter
clc;
clear all;
close all;
fs=1000;
kp=3;
ks=60;
fp=40;
fstop=150;
wp=fp/(fs/2);
wstop=fstop/(fs/2);
[N,wc]=cheb1ord(wp,wstop,kp,ks)
[b a]=cheby1(N,kp,wc,'low')
freqz(b,a,1000,fs)
%%
%Chebyshev High Pass Filter
clc;
clear all;
close all;
fs=1000;
kp=3;
ks=60;
fp=40;
fstop=150;
wp=fp/(fs/2);
wstop=fstop/(fs/2);
[N,wc]=cheb1ord(wp,wstop,kp,ks)
[b a]=cheby1(N,kp,wc,'High')
freqz(b,a,1000,fs)
%%