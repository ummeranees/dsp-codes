t=input('Enter Length as a:b\n');
x=input('Enter signal values\n');
p=input('expansion value\n');
q=input('compression value\n');
subplot(3,1,1);
stem(t,x);
xlim([min(t-4) max(t+4)]);
title('Original Signal x') ;
subplot(3,1,2);
stem(p*t,x);
xlim([min(t-4) max(t+4)]);
title('Expanded Signal ') ;
subplot(3,1,3);
stem(t/q,x);
xlim([min(t-4) max(t+4)]);
title('Expanded Signal ') ;

