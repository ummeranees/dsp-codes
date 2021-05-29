n=-30:30;
x1_n=input('Enter x(1)\n');
x2_n=input('Enter x(2)\n');
num=input('Enter H(z) numerator inside []\n');
den=input('Enter H(z) denominator\n');
a=input('Enter a1\n');
b=input('Enter a2\n');
y1=filter(num,den,x1_n);
y2=filter(num,den,x2_n);
x3=a*x1_n+b*x2_n;
y3=filter(num,den,x3);
z=a*y1+b*y2;
p=y3-z;
stem(n,p)
xlabel('finite region n')
title('Linearity has output zero or very small value')
