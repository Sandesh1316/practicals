clc;
close all;
clear all;
x = input('Enter the sequence =');
n = input('Emter the length of fft = ');
Y = fft(x,n);
stem(Y);
ylabel('Imaginary axis');
xlabel('Real axis');
Y