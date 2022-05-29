clc;
clear all;
close all;
Xn = input('Enter the sequence x(n) = ');
N = input('Enter the values of N=');
Xk = zeros(N,1);
lx = length(Xn);
Xn = [Xn,zeros(1,(N-lx))];
n = 0:N-1;

for k = 0:N-1
 wn = exp(-j*2*pi*n*k/N);
 Xk(k+1)= wn*Xn';
end;
disp('The DFT of the sequence is')
for k = 0:N-1
 disp(round(Xk(k+1)))
end;

figure;
subplot(2,1,1)
stem(abs(Xk));
grid on;
xlabel('K');
ylabel('Magnitude of X(K)');
title('Graph of X(K)');

subplot(2,1,2);
stem(angle(Xk));
grid on;
xlabel('K');
ylabel('Phase of X(K)');
title('Angles of X(K)');