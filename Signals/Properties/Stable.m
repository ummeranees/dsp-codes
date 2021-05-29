n=3:30;
%some finite range
a=input('Enter co-efficients\n');
%eqt like x(n)=ay(n)+by(n-1) where a and b are co-efficients
r=roots(a);
if (abs(a)<1)
    disp('Stable System');
else
    disp('Unstable System')
end;
    