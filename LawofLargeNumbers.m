%%SET 2

%(a) The law of large numbers states that with more realizations and a
%bigger sample size, we are able to generate an average that is closer to
%the expected value.  So with N = 1000, we are able to approximate the
%distribution with a Gaussian pdf.  Also note the mean of this Gaussian curve is
%sqrt(pi/2), which is mean of Rayleigh random variable.  So sample mean equals distribution mean.
sigma_squared = 1;       
 N = 100;
 U= rand(N,1000);
 R = sqrt(-2*(sigma_squared)*log(U));
X = mean(R); % X is Mn = Sn/N = (X1 + X2 +...X100)/100
hist(X)

xlabel('Value'); ylabel('Count'); 
title('PDF of X with N = 100')

%(b) With N = 10000, the sample size is even larger. We see that the curve is an even better approximate of a gaussian curve. 
sigma_squared = 1;       
 N = 10000;
 U= rand(N,1000);
 R = sqrt(-2*(sigma_squared)*log(U));
X = mean(R); % X is Mn = Sn/N = (X1 + X2 +...X1000)/1000
figure
hist(X)
xlabel('Value'); ylabel('Count'); 
title('PDF of X with N = 10000')

%(c) With a sample space of 1000 samples of Y, we start to approach a Gaussian
%Distribution.  

 lambda = 1;       
 N = 100;
 X = rand(N,1000);
 E = -log(X)*lambda;
Y = mean(E); 
figure
hist(Y)
xlabel('Value'); ylabel('Count'); 
title('PDF of Y with N = 100')
 


%(d) With a samples space of 10000 samples of Y, we get a better Gaussian
%approximation of the pdf.  

 lambda = 1;       
 N = 10000;
 X = rand(N,1000);
 E = -log(X)*lambda;
Y = mean(E); 
figure
hist(Y)
xlabel('Value'); ylabel('Count'); 
title('PDF of Y with N = 10000')

%(e)The sample mean that is calculated is E{Z} = E{X/Y} = sqrt(pi/2) = 1.253.  We
%get a better approximation of our mean with greater N values. With N =
%100, we have 1.2420 and with N = 10000, we have  1.2527.
        
 N = 100;
 U= rand(N,1000);
 R = sqrt(-2*(1)*log(U));
X = sum(R); % X is Sn = (X1 + X2 +...X100)/100
      
 N = 100;
 U = rand(N,1000);
 E = -log(U)*(1);
Y = sum(E); 

Z= X/Y;
mean(Z)


 N = 10000;
 U= rand(N,1000);
 R = sqrt(-2*(1)*log(U));
X = sum(R); % X is Sn = (X1 + X2 +...X100)/100
      
 N = 10000;
 U = rand(N,1000);
 E = -log(U)*(1);
Y = sum(E); 

Z= X/Y;
mean(Z)



