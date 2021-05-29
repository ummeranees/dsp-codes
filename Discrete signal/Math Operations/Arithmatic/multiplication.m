n1=input('length in form x:y');
x=input('sequence in form [x y .. z]');

n2=input('length in form x:y');
y=input('sequence in form [x y .. z]');
% two signals of different indeces
subplot(3,1,1);
stem(n1,x);
title('X') ;

subplot(3,1,2);
stem(n2,y);
title('Y');

n3 =min (min(n1) ,min( n2 ) ) : max ( max ( n1 ) , max ( n2 ) );  %  finding the duration of output signal
s1 =zeros(1,length (n3) );
s2 =s1;
s1 (find ( ( n3>=min( n1 ) ) & ( n3 <=max ( n1 ) )==1 ) )=x; 
% signal x with the duration of  output signal add
s2 (find ( ( n3>=min ( n2 ) ) & ( n3 <=max ( n2 ))==1) )=y;
 % signal y with the duration of  output signal add
add=s1 .*s2; % addition
subplot(3,1,3)
stem(n3,add)
title('Z=X+Y');