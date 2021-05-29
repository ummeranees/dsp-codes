%IIR high pass Filter

kp=input('Enter pass band ripple');
ks=input('Enter start band attenuation');
fs=input('Enter sampling freq:');
fpass=input('Enter passband freq:');
fstop=input('Enter stopband freq:');
wp=fpass/(fs/2);
ws=fstop/(fs/2);
s=menu('window selection','Butterworth','chebyshev-I');
switch s
    case 1
        [N wc]=buttord(wp,ws,kp,ks);
        [b a]=butter(N,wc,'high');
        freqz(b,a,1000,fs)
        title('IIR high Pass Filter by Hanning Window ')
    case 2
        [N wc]=buttord(wp,ws,kp,ks);
        [b a]=butter(N,wc,'high');
        freqz(b,a,1000,fs)
        title('IIR high Pass Filter by Hanning Window ')
    otherwise
        disp('Select valid Window');
end






