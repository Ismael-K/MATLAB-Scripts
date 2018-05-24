


%                   25
%	H(jw) = -------------------	
%	              (25 - w^2) + j6w
%
%Low pass filter
%freqs function computes and plots the magnitude and phase on a logarithmic scale
%lsim function generates the time response of the inserted functions				  
%1- Frequency Response 
a=[0 0 25];
b=[1 6 25];
freqs(a,b);


%2 - Sinusoid Simulations 
t=0:.02:6;
x1=cos(pi*t);
sys=tf(a,b);
y1=lsim(sys,x1,t);
figure
plot(t,x1,'r');hold on
plot(t,y1);
xlabel('t');ylabel('y1(t)');title('y1 vs. t');
legend('x1','y1');grid on;
%phase = (2*180)*(t1 -t0) / lambda
%Calculation: magn. of H(j pi)= 1.034, phase = -51.2 deg
%graph: magn. of H(j pi)= 1.033, phase = -54 deg
 
x2=cos(4*pi*t);
sys=tf(a,b);
y2=lsim(sys,x2,t);
figure
plot(t,x2,'r');hold on
plot(t,y2);
xlabel('t');ylabel('y2(t)');title('y2 vs. t');
legend('x2','y2');grid on;
%Calculation: magn. of H(j pi)= 0.1636, phase = -150 deg
%graph: magn. of H(j pi)= 0.162
 
x3=cos(10*pi*t);
sys=tf(a,b);
y3=lsim(sys,x3,t);
figure
plot(t,x3,'r');hold on
plot(t,y3);
xlabel('t');ylabel('y3(t)');title('y3 vs. t');
legend('x3','y3');grid on;
%Calculation: magn. of H(j pi)= 0.02, phase = -168 deg
%graph: magn. of H(j pi)= 0.018


%3 - Filtering -
x4=x1+x3;
sys=tf(a,b);
y4=lsim(sys,x4,t);
figure
plot(t,x4,'r');hold on
plot(t,y4);
xlabel('t');ylabel('y4(t)');title('y4 vs. t');
legend('x4','y4');grid on;
%overshoot above 1
 
x5=x1-x3;
sys=tf(a,b);
y5=lsim(sys,x5,t);
figure
plot(t,x5,'r');hold on
plot(t,y5);
xlabel('t');ylabel('y5(t)');title('y5 vs. t');
legend('x5','y5');grid on;
%flat at 1


%4 - Square wave simulation
x6=square(pi*t);
sys=tf(a,b);
y6=lsim(sys,x6,t);
figure
plot(t,x6,'r');hold on
plot(t,y6);
xlabel('t');ylabel('y6(t)');title('y6 vs. t');
legend('x6','y6');grid on;



