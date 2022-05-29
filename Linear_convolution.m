clc;
clear all;
close all;
x = input('Enter the first sequnce');
h = input('Enter the second sequnce');
y = conv(x,h)

subplot(3,1,1);
stem(x)
xlabel('Time')
ylabel('Amplitude')
title('first input sequnce')

subplot(3,1,2);
stem(h)
xlabel('Time')
ylabel('Amplitude')
title('second input sequnce')

subplot(3,1,3);
stem(y)
xlabel('Time')
ylabel('Amplitude')
title('LENEAR CONVOLUTION')