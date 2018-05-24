%Function for obtaining Poisson Distr from exponential

lambda=5; N=1000		
for i=1:N
      n=1;
      P=1;
      U=rand;
      P=U*P;
      while P>exp(-lambda)
            n=n+1;
            U=rand;
            P=U*P;
      end
      x(i)=n-1;
  end
hist(x)
 xlabel('Value'); ylabel('Count');title('PMF for the number of packet arrivals to a buffer')


figure
bar(hist(x) ./ sum(hist(x)) ) %normalize the plot
 xlabel('Value'); ylabel('Count');title('Normalized PMF for the number of packet arrivals to a buffer')

mean =0;
for i =1 : N
    mean = x(i)+ mean;
end
meanvalue = mean/N



var = 0;
for i = 1: N
    var = (x(i) - meanvalue)^2 + var;
end
varvalue = var/N

 
 

%To double check, use the poissrnd function
xmean = 5
x = poissrnd(xmean,N,1);

figure, clf, hold on
rvaxis = [0:30];
xf = hist(x,rvaxis) / N;
stem(rvaxis, xf,'b')
 xlabel('Value'); ylabel('Count'); 
 title('PMF for the number of packet arrivals to a buffer using poissrnd')

 