
%Part 2 - pole-zero plot
%{
r=0.8;
w0 = 0.25*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1];
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2];
z= roots(num);
p = roots(den);

figure
zplane(z,p)
title('Pole Zero Plot of H(z) for r = 0.8, Wo=0.25*pi')
%}

%Part 3 - freqz for trial values of varying r 
%{
%-----r = 0.2, keep wo = 0.25*pi -----------
r=0.2; w0 = 0.25*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1]; %b vector
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2]; % a vector
[H,W] = freqz(num,den);

figure
plot(W, abs(H));
title(['Magnitude Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title(['Phase Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('Phase');

%-----r = 0.6, keep wo = 0.25*pi -----------
r=0.6; w0 = 0.25*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1]; %b vector
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2]; % a vector
[H,W] = freqz(num,den);

figure
plot(W, abs(H));
title(['Magnitude Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title(['Phase Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('Phase');

%-----r = 0.8, keep wo = 0.25*pi -----------
r=0.8; w0 = 0.25*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1]; %b vector
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2]; % a vector
[H,W] = freqz(num,den);

figure
plot(W, abs(H));
title(['Magnitude Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title(['Phase Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('Phase');
%}

%Part 3 - freqz for trial values of varying Wo 
%{
%-----r = 0.8, keep wo = 0.25*pi -----------
r=0.8; w0 = 0.25*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1]; %b vector
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2]; % a vector
[H,W] = freqz(num,den);

figure
plot(W, abs(H));
title(['Magnitude Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title(['Phase Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('Phase');


%-----r = 0.8, keep wo = 0.5*pi -----------
r=0.8; w0 = 0.5*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1]; %b vector
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2]; % a vector
[H,W] = freqz(num,den);

figure
plot(W, abs(H));
title(['Magnitude Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title(['Phase Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('Phase');


%-----r = 0.8, keep wo = 1*pi -----------
r=0.8; w0 = 1*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1]; %b vector
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2]; % a vector
[H,W] = freqz(num,den);

figure
plot(W, abs(H));
title(['Magnitude Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title(['Phase Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('Phase');


%-----r = 0.8, keep wo = 0.75*pi -----------
r=0.8; w0 = 2*pi;
num = [1 -exp(-1i*w0)-exp(1i*w0) 1]; %b vector
den = [1 -r*exp(-1i*w0)-r*exp(1i*w0) r^2]; % a vector
[H,W] = freqz(num,den);

figure
plot(W, abs(H));
title(['Magnitude Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title(['Phase Response with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('w (rad/sample)');ylabel('Phase');

%}

%Part 4(a-e),5(a-c) - generate 400 samples of 300Hz sine wave
%{
fsamp = 8192;
n = 0:(1/fsamp):0.0488;
x = 0.8*cos(2*pi*(300)*n);
figure
plot(n,x)
title('300Hz sine wave sampled at rate 8192Hz vs. time');grid
xlabel('n (samples)');ylabel('x[n]');

%Part 4(d) eliminate the 300Hz component
r=0.4; w0 = (2*pi*300)/8192;
b = [1 -exp(-1i*w0)-exp(1i*w0) 1];
a = [1 -(r*exp(-1i*w0)+r*exp(1i*w0)) r^2];

Y = filter(b,a,x);

figure
plot(n,Y)
title(['Notch filter output with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('n (samples)');ylabel('y[n],x[n]');grid on

hold on
plot(n,x)
hold off
legend('Filtered output y[n]','300Hz signal input x[n]')

%Part 4(e) transient of filter output
r=0.5; w0 = (2*pi*300)/8192;
b = [1 -exp(-1i*w0)-exp(1i*w0) 1];
a = [1 -(r*exp(-1i*w0)+r*exp(1i*w0)) r^2];
Y2 = filter(b,a,x);
figure
plot(n,Y2)
title(['Notch filter output with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('n (samples)');ylabel('y[n],x[n]');grid on

r=0.7; w0 = (2*pi*300)/8192;
b = [1 -exp(-1i*w0)-exp(1i*w0) 1];
a = [1 -(r*exp(-1i*w0)+r*exp(1i*w0)) r^2];
Y3 = filter(b,a,x);
figure
plot(n,Y3)
title(['Notch filter output with r=' , num2str(r), ', w0=', num2str(w0)]);grid
xlabel('n (samples)');ylabel('y[n],x[n]');grid on

%Part 5

load Project2Data(1).mat

%soundsc(sig, fs)
% The sound segment is in sig vector and fs is the sampling frequency. 

r=0.1; w0 = (2*pi*300)/8192;
b = [1 -exp(-1i*w0)-exp(1i*w0) 1];
a = [1 -(r*exp(-1i*w0)+r*exp(1i*w0)) r^2];

Y = filter(b,a,sig);

soundsc(Y, fs)
%}

%% Section II

[b,a] = butter(2,[.07 .10],'stop');

[H,W] = freqz(b,a);

figure
plot(W, abs(H));
title('Unquantized Magn. response of 4th order Butterworth filter');grid
xlabel('w (rad/sample)');ylabel('|H(z)|');

figure
plot(W, angle(H));
title('Unquantized Phase response of 4th order Butterworth filter');grid
xlabel('w (rad/sample)');ylabel('Phase');

