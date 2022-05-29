clc;
clear all;
close all;
xn=input('Enter the input sequence');
N=length(xn);
n=0:1:N-1;

subplot(3,3,1)
stem(n, xn)
xlabel('time')
ylabel('Amplitude')
title('Input sequence')
xk=fft(xn,N);
disp(xk)
k=0:1:N-1;

subplot(3,3,2)
stem(k,xk)
xlabel('time')
ylabel('Amplitude')
title('DFT')
magnitude=abs(xk);

subplot(3,3,3)
stem(magnitude)
xlabel('time')
ylabel('Amplitude')
title('magnitude')
z=phase(xk);

subplot(3,3,4)
stem(z)
xlabel('time')
ylabel('Amplitude')
title('phase')
X=ifft(xk,N);
disp(X)
n=0:1:N-1;

subplot(3,3,5)
stem(n,X)
xlabel('time')
ylabel('Amplitude')
title('Idft')