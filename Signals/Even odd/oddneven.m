n1=input('Enter the length n1:');
x1=input('Enter the signal x1:');
n2=-fliplr(n1);
%flip range of input and store it in n2
n=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=zeros(1,length(n));
%bcoz u need zero padding on negative range side while flippng signal
y1((n>=min(n1)) & (n<=max(n1))) = x1();
x=y1;
xe=0.5*(x + fliplr(x));
xo=0.5*(x - fliplr(x));
subplot(3,1,1);
stem(n,x);
title('Original Signal');
subplot(3,1,2)
stem(n,xe);
title('Even part Signal');
subplot(3,1,3);
stem(n,xo);
title('Odd part Signal');
