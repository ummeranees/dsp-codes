%IIR BandStop Filter


kp=input('Enter pass band ripple:');
ks=input('Enter start band attenuation:');
fs=input('Enter sampling freq:');
fpass1=input('Enter passband freq1:');
fpass2=input('Enter passband freq2:');
fstop1=input('Enter stopband freq1:');
fstop2=input('Enter stopband freq1:');
wp1=fpass1/(fs/2);
wp2=fpass2/(fs/2);
ws1=fstop1/(fs/2);
ws2=fstop2/(fs/2);

s=menu('window selection','Butterworth','chebyshev-I');
switch s
    case 1
        [N wc]=buttord([wp1 wp2],[ws1 ws2],kp,ks);%cutoff w in rad/sec
        [b a]=butter(N,wc,'stop');
        freqz(b,a,1000,fs)
        title('IIR BandStop Filter by Butterworth Window ')
    case 2
        [N wc]=buttord([wp1 wp2],[ws1 ws2],kp,ks);%cutoff w in rad/sec
        [b a]=butter(N,wc,'stop');
        freqz(b,a,1000,fs)
        title('IIR BandStop Filter by chebyshev-I Window ')
    otherwise
        disp('Select a valid Window')
end

        

 





