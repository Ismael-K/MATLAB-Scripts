function [X] = bell(ff,A0,I0,tau,dur,fsamp )
%bell uses FM to create musical sounds
%syntax use as bell(ff,A0,I0,tau,dur,fsamp )
%returns [X] as well as spectrogram and sound
 
 
%check ff has 2 real elmts and lngth 2
x=length(ff);
reff1=isreal(ff(1));
reff2=isreal(ff(2));
reA0=isreal(A0);
reI0=isreal(I0);
retau=isreal(tau);
redur=isreal(dur);
fsamp_int= mod(fsamp,1);
 
%error not disp
if (x>2)||(reff1==0)||(reff2==0)
    error('ff must be a row vector consisting of 2 real elements');
elseif reA0==0
    error('A0 must be real');
elseif reI0==0
    error('I0 must be real');
elseif retau==0
    error('tau must be real');
elseif redur==0
    error('dur must be real');
elseif (fsamp<0)||(fsamp_int ~=0)
    error('fsamp must be a positive integer');
end
 
fc=ff(1);
fm=ff(2);
[t,At,It]=bell_env(A0,I0,tau,dur,fsamp);
%assume phases is zero
X=At.*cos((2*pi*fc.*t) + It.*cos(2*pi*fm.*t));
sound(X,fsamp);
 
 
subplot(3,1,1);
plot(t,At);
xlabel('t');
ylabel('At');
title('At=A0*exp(-t/tau)');
 
subplot(3,1,2);
plot(t,X);
xlabel('t');
ylabel('X');
title('X=At.*cos((2*pi*fc.*t) + It.*cos(2*pi*fm.*t))');
 
subplot(3,1,3);
t1=t(1:300);
X1=X(1:300);
plot(t1,X1);
xlabel('t1');
ylabel('X1');
title('X1=X(1:300)');
 
figure (2);
spectrogram(X,256,128,256,fsamp);
 
%S = SPECTROGRAM(X,WINDOW,NOVERLAP,NFFT,Fs)
 
end
