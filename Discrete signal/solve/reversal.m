n=input('length in form x:y\n');
x=input('sequence in form [x y .. z]\n');
subplot(2,1,1)
stem(n,x);
%input signal
title('Signal x(n)');
c=fliplr(x);
y=fliplr(-n);
subplot(2,1,2);
stem(y,c);
axis([min(n-2) max(n+2) min(x) max(x)]);
title('Reversed Signal x(-n)') ;