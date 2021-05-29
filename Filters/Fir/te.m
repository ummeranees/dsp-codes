
%Low Pass Filter FIR


N=input('Enter order of Filter N:');
fs=input('Enter Sampling Freq:');
fc=input('Enter Cut-off Freq:');%cut off frequency fc<=(fs/2)
wc=fc/(fs/2);%wc should be always between 0 and 1
s=menu('window selection','Rectangular','blackman','Hamming','Kaiser');
switch s
    
    case 1
        
        h=fir1(N,wc,'low',rectwin(N+1));
        freqz(h,1,1024,fs)
        title('low Pass Filter by Rectangular window')
    case 2    
        h=fir1(N,wc,'low',hanning(N+1));
        freqz(h,1,1024,fs)
         title('low Pass Filter by Hanning Window ')
    case 3
        
        h=fir1(N,wc,'low',hamming(N+1));
        freqz(h,1,1024,fs)
        title('low Pass Filterby Hammimg Window')
    case 4
        f=input('Shaping factor for Kaiser window:');
        h=fir1(N,wc,'low',kaiser((N+1),f));
        freqz(h,1,1024,fs)
        title('low Pass Filter by Kaiser Window ')
    otherwise
        
        disp('Select valid window')
end

%