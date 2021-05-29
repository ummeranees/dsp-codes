n1=input('Enter the amount to be delayed n1=\n');
n2=input('Enter the amount to be advanced n2=\n');
n=input('length in form x:y\n');
x=input('Enter signal in form [a b ... c] x=\n');
subplot(3,1,1);
plot(n,x);

title('Signal x(n)');
xlabel('time');
ylabel('amplitude');
m=n+n1;
y=x;
subplot(3,1,2);
plot(m,y);

title('Delayed signal x(n-n1)');
xlabel('time');
ylabel('amplitude');
t=n-n2;
z=x;
subplot(3,1,3);
plot(t,z);

title('Advanced signal x(n+n2)');
xlabel('time');
ylabel('amplitude');