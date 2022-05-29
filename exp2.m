clc;
clear all;
close all;
x = input('Enter the first sequence x(n) =');
x1 = input('Enter the lower limit of x =');
lx = length(x);
xu = lx+x1-1;
nx=x1:xu;
subplot(3,1,1);
stem(nx,x);
title('Sequence x(n)');
grid on
%% time delay
d = input('Enter the value (k) by which of samples will be delayed=');
dn = x1+d : xu+d;
subplot(3,1,2);
stem(dn,x);
title('Delayed Sequence');
grid on
%% time advanced
a = input('Enter the value (k) by which of samples will be advanced=');
an = x1-a : xu-a;
subplot(3,1,3);
stem(an,x);
title('Advanced Sequence');
grid on
%% Folding Sequence
nx = x1:xu;
figure;
subplot(3,2,1);
stem(-nx,x);
title('folded Sequence');
grid on
%% delayed of folded sequence
d = input('Enter the value (k) by which of samples will be delayed=');
dn = x1+d : xu+d;
disp('the folded sequence is');
fx = fliplr(x)
dfn = (min(-nx) + d) : (max(-nx) + d);
subplot(3,2,2);
stem(dfn,fx);
title('Delayed the folded Sequence x(-n) => x(-n+k)');
grid on
%% Advanced of Folded sequence
afn = (min(-nx) -d) : (max(-nx) -d);
fx = fliplr(x)
subplot(3,2,3);
stem(afn,fx);
title('Advanced the folded Sequence x(-n) => x(-n+k)');
grid on;
%% Downscalling (Attenuation) the sequence
dw = input('Enter the value (k) by which of samples will be attenuated=');
dw = x/dw;
figure;
subplot(3,3,1);
stem(nx,dw);
title('Downscalling the sequence x(n) => x(n)/k');
grid on
%% Upscalling(Amplification) the sequence
up = input('Enter the value (k) by which of samples will be amplified=');
upx = up*x
subplot(3,3,2);
stem(nx,upx);
title('Upscalling the sequence x(n) => k*x(n)');
grid on




