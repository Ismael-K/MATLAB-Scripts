%Part2
n= 0:1:10;
L=5;

hzoh = zeros(1, length(n));
for x = 0:1:L-1
   hzoh = delta(n-x) + hzoh;
end

figure
stem(n,hzoh)
xlabel('n');ylabel('hzoh[n]');
title('Impulse Response for ZOH (L=5)');

n_lin= -5:1:5;
hlin = (1 - abs(n_lin)/L);
figure
stem(n_lin,hlin)
xlabel('n');ylabel('hlin[n]');
title('Impulse Response for Linear Interpolator(L=5)');


%Part 3
N = 1024;   % fft length
f = linspace(0,pi,N);   % frequency axis vector
Fzoh = fft(hzoh,N );

figure
plot(f,abs(Fzoh))
hold on

Flin = fft(hlin,N );
plot(f,abs(Flin))
xlabel('w (rad)');ylabel('|DTFT|');
title('Magnitude of freq. response of Linear Interpolator and ZOH'); 
legend('ZOH', 'Lin Int')


%part4
 load mp1DataFile(1).mat

x_e = upsample(data1,L); %upsample the input to system by L=5 (stuff zeros between samples)
xzoh = filter(hzoh,1, x_e); %a=1, b = hzoh[n]

x_e_lin = upsample(data1,L); %upsample the input to system by L=5
xlin = filter(hlin,1, x_e_lin); %a=1, b = hlin[n]

