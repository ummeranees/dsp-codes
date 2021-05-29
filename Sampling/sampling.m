t=0:0.001:0.2;
f=input('Enter the frequency of signal f:');
fu=input('Enter the frequency fu<=2f:');
fn=input('Enter the frequency fn>=2f:');%nyquist criteria 
fo=input('Enter the frequncy fo>>2f:');

%Generation of Signal (5khz )
A=sin(2*pi*f*t);
subplot(3,3,2);
plot(t,A);
grid on;
xlabel('Time is sec');
ylabel('Amplitude');
title('Original Signal');

% Under Sampling
tu=0:(1/fu):0.2;
Us=sin(2*pi*tu*f);
subplot(3,3,4);
stem(tu,Us);
grid on;
xlabel('Time is sec');
ylabel('Amplitude');
title('Under-Sampling');

%Nyquist Rate Sampling
tn=0:(1/fn):0.2;
Ns=sin(2*f*pi*tn);
subplot(3,3,5);
stem(tn,Ns);
grid on;
xlabel('Time is sec');
ylabel('Amplitude');
title('Nyquist Rate Sampling ');

%Over Sampling
to=0:(1/fo):0.2;
Os=sin(2*pi*f*to);
subplot(3,3,6);
stem(to,Os);
grid on;
xlabel('Time is sec');
ylabel('Amplitude');
title('Over Sampling');

%Reconstruction of Signals

n1=0:(1/fn):0.2;
R1=interp1(tn,Ns,n1);%interp1 -command used for recontruction of Samples
subplot(3,3,8);
plot(n1,R1);
grid on;
xlabel('Time is sec');
ylabel('Amplitude');
title('Recontructed Signal(possible only under Nyqusit Rate Sampling)');






