p=input('Enter the limit for x\n');
q=input('Enter the limit for y\n');
x=input('Enter the elements for x\n');
y=input('Enter the elements for y\n');
n1=p ;
n2=q;
subplot(3,1,1);
stem(n1,x);
title('Signal - x(n)');
subplot(3,1,2);
stem(n2,y);
title('Signal - h(n)');
z=conv(x,y);
t=length(n1)+length(n2)-1;
s=0:t-1;
subplot(3,1,3);
stem(s,z);

title('Output - y(n)');