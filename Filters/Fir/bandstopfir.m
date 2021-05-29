%FIR Bandstop  Filter

N=input('Enter order of Filter N:');
fs=input('Enter Sampling Freq:');
fc1=input('Enter StopBand Freq 1:');%cut off frequency fc<=(fs/2)
fc2=input('Enter StopBand Freq 2:');%cut off frequency fc<=(fs/2)

wc1=fc1/(fs/2);%wc1 should be always between 0 and 1
wc2=fc2/(fs/2);%wc2 should be always between 0 and 1

s=menu('window selection','Rectangular','blackman','Hamming','Kaiser');
switch s
    
    case 1
        
        h=fir1(N,[wc1,wc2],'stop',rectwin(N+1));
        freqz(h,1,1024,fs)
        title('Bandstop  Filter by Rectangular window')
    case 2    
        h=fir1(N,[wc1,wc2],'stop',hanning(N+1));
        freqz(h,1,1024,fs)
         title('Bandstop  Filter by Hanning Window ')
    case 3
        
        h=fir1(N,[wc1,wc2],'stop',hamming(N+1));
        freqz(h,1,1024,fs)
        title('Bandstop  Filter by Hammimg Window')
    case 4
        f=input('Shaping factor for Kaiser window:');
        h=fir1(N,[wc1,wc2],'stop',kaiser((N+1),f));
        freqz(h,1,1024,fs)
        title('Bandstop Filter by Kaiser Window ')
    otherwise
        
        disp('Select valid Window')
end


