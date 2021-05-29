a1=input('enter the a1 sequence a1=')
b1=input('enter the b1 sequence b1=')
c1=input('enter the c1 sequence c1=')
N1=max(length(a1),length(b1))
N=max(N1,length(c1))
a=[a1,zeros(1,N-length(a1))]
b=[b1,zeros(1,N-length(b1))]
c=[c1,zeros(1,N-length(c1))]
x=cconv(a,b,N1)
y=cconv(b,a,N1) %commutative property a?N b=b?N a
if x==y
 disp('commutative property is proved')
else
 disp('commutative property is not proved')
end
t=cconv(b,c,N)
y1=cconv(a,t,N) %associative property a?N (b?N c)=(a?N b) ?N c
y2=cconv(x,c,N)
if y1==y2
disp('associative property is proved')
else
 disp('associative property is not proved')
end
t1= b + c
y3=cconv(a,t1,N)
t2=cconv(a,c,N) % distributive property a?N (b+c)=(a?N b)+(a?N c)
y4= x + t2
if y3==y4
disp('distributive property is proved')
else
 disp('distributive property is not proved')
end