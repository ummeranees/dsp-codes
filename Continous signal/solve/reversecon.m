n=input('length in form x:y\n');
x=input('sequence in form [x y .. z]\n');
subplot(2,1,1)
plot(n,x);
%input signal
title('Signal x(n)');
c=fliplr(x);
y=fliplr(-n);
subplot(2,1,2);
plot(y,c);

title('Reversed Signal x(-n)') ;