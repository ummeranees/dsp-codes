t=input('Enter Length as in a:b\n');
x=input('signal values\n');
p=input('expansion value\n');
q=input('compression value\n');
subplot(3,1,1);
plot(t,x);
xlim([min(t-4) max(t+4)]);
title('Original Signal x') ;
subplot(3,1,2);
plot(p*t,x);
xlim([min(t-4) max(t+4)]);
title('Expanded Signal ') ;
subplot(3,1,3);
plot(t/q,x);
xlim([min(t-4) max(t+4)]);
title('Expanded Signal ') ;

