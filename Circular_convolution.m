clc;
clear all;
close all;
x = input ('Enter the fisrt sequnce');
n1 = length(x);
h = input ('Enter the second sequnce');
n2 = length(h);
N = max(n1,n2);
n3 = n1 - n2;
if (n3>0);
    h = [h,zeros(1,n3)];
else
    x = [x,zeros(1,-n3)];
end

for m =1:N
    y(n)=0;
    for i =1:N
        j =n-i+1;
    end
if(j<=0)
   j=N+j;
end
   y(n)=[y(n)+x(i)*h(j)]; 
end

