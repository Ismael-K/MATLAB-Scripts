
function[X] = Beat(A,B,fc,fdelta,fsamp,dur)
%Beat generate AM or beat notes (sound and plot)  
%Usage: This uses the parameters Beat(A,B,fc,fdelta,fsamp,dur)
%The output is X
 
%check to see if real
aR=isreal(A);
bR=isreal(B);
fcR=isreal(fc);
fdR=isreal(fdelta);
fsamp_int= mod(fsamp,1);
%check fsamp is an integer using modulus (fsamp/1).If is integer returns 0(no rem)
%If is not int, will return some remander. Will test using ~= (not equals)
durR=isreal(dur);
 
if(aR==0)
error('A must be real');
elseif(bR==0)
error('B must be real');
elseif(fcR==0)
error('fc must be real');
elseif(fdR==0)
error('fdelta must be real');
elseif(fsamp< 0)||(fsamp_int ~= 0)
error('fsamp must be positive and an integer');
elseif(durR==0)
error('dur must be real');
end
 
tt=0:(1/fsamp):dur;
X1= A*cos(2*pi*(fc-fdelta).*tt);
X2= B*cos(2*pi*(fc+fdelta).*tt);
%must use dot multiplication
X= X1+X2;
 
subplot(3,1,1)
plot(tt,X1);
xlabel('time (t)');
ylabel('X1');
title(['X1= ',num2str(A),'*cos(2*pi(',num2str(fc),'-', num2str(fdelta) , ').*t)']);
%dont put tt using num2str
xlim([0 dur/10]);
grid on;
 
subplot(3,1,2)
plot(tt,X2);
xlabel('time (t)');
ylabel('X2');
title(['X2= ',num2str(B),'*cos(2*pi(',num2str(fc),'+',num2str(fdelta),').*t)']);
xlim([0 dur/10]);
grid on;
 
subplot(3,1,3)
plot(tt,X);
xlabel('time (t)');
ylabel('X');
title('X= X1 + X2');
xlim([0 dur/10]);
grid on;
 
sound(X,fsamp);
end


