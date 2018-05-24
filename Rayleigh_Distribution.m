%{
%%SET 1
sigma_squared = 1;       %Scale parameter
 N = 1000;
 nbins = 100;
 
 %1(b): 
 R = sqrt(-2*(sigma_squared)*log(1- rand(N,1)));
 figure
 hist(R, nbins);
 xlabel('Value'); ylabel('Count'); 
 title('Rayleigh distribution with sigmasquared of 1')
 
 sample_mean = 0;
  for k = 1:length(R)
        sample_mean = sample_mean + (R(k)/length(R));
  end
disp(['N = 1000, Sigma^2 = 1, Sample mean: ', num2str(sample_mean)]);

 sample_var = 0;
  for k = 1:length(R) - 1
        sample_var = sample_var + (((R(k) - sample_mean))^2 )/ (length(R) - 1);
  end
disp(['N = 1000, Sigma^2 = 1, Sample variance: ', num2str(sample_var)]);

%1(c)
sigma_squared = 0.5;

R = sqrt(-2*(sigma_squared)*log(1- rand(N,1)));
 figure
 hist(R, nbins);
 xlabel('Value'); ylabel('Count'); 
 title('Rayleigh distribution with sigmasquared of 0.5')
 
 sample_mean = 0;
  for k = 1:length(R)
        sample_mean = sample_mean + (R(k)/length(R));
  end
disp(['N = 1000, Sigma^2 = 0.5, Sample mean: ', num2str(sample_mean)]);

 sample_var = 0;
  for k = 1:length(R) - 1
        sample_var = sample_var + (((R(k) - sample_mean))^2 )/ (length(R) - 1);
  end
disp(['N = 1000, Sigma^2 = 0.5, Sample variance: ', num2str(sample_var)]);


sigma_squared = 5;
R = sqrt(-2*(sigma_squared)*log(1- rand(N,1)));
 figure
 hist(R, nbins);
 xlabel('Value'); ylabel('Count'); 
 title('Rayleigh distribution with sigmasquared of 5')
 
 sample_mean = 0;
  for k = 1:length(R)
        sample_mean = sample_mean + (R(k)/length(R));
  end
disp(['N = 1000, Sigma^2 = 5, Sample mean: ', num2str(sample_mean)]);

 sample_var = 0;
  for k = 1:length(R) - 1
        sample_var = sample_var + (((R(k) - sample_mean))^2 )/ (length(R) - 1);
  end
disp(['N = 1000, Sigma^2 = 5, Sample variance: ', num2str(sample_var)]);

sigma_squared = 10;

R = sqrt(-2*(sigma_squared)*log(1- rand(N,1)));
 figure
 hist(R, nbins);
 xlabel('Value'); ylabel('Count'); 
 title('Rayleigh distribution with sigmasquared of 10')
 
 sample_mean = 0;
  for k = 1:length(R)
        sample_mean = sample_mean + (R(k)/length(R));
  end
disp(['N = 1000, Sigma^2 = 10, Sample mean: ', num2str(sample_mean)]);

 sample_var = 0;
  for k = 1:length(R) - 1
        sample_var = sample_var + (((R(k) - sample_mean))^2 )/ (length(R) - 1);
  end
disp(['N = 1000, Sigma^2 = 10, Sample variance: ', num2str(sample_var)]);

 %1(d) As sigma_squared increases, the tail of the Rayleigh Distribution
 %becomes longer and it becomes more flat at the end. 
 
 %}
 

 
 %%SET 2
 lambda = 1;       %Rate parameter
 N = 1000;
 nbins = 100;
 X = rand(N,1);
 E = -log(X)*lambda;
 figure
 hist(E, nbins);
 xlabel('Value'); ylabel('Count'); 
 title('Exponential distribution with lambda of 1')
 
 %2(b)
sample_mean = 0;
  for k = 1:length(E)
        sample_mean = sample_mean + (E(k)/length(E));
  end
disp(['N = 1000, Lambda = 1, Sample mean: ', num2str(sample_mean)]);

 sample_var = 0;
  for k = 1:length(E) - 1
        sample_var = sample_var + (((E(k) - sample_mean))^2 )/ (length(E) - 1);
  end
disp(['N = 1000, Lambda = 1, Sample variance: ', num2str(sample_var)]);

 
 %2(c)
lambda = 0.5;       %Rate parameter
 N = 1000;
 nbins = 100;
 X = rand(N,1);
 E = -log(X)*lambda;
 figure
 hist(E, nbins);
 xlabel('Value'); ylabel('Count'); 
 title('Exponential distribution with lambda of 0.5')
 
 
sample_mean = 0;
  for k = 1:length(E)
        sample_mean = sample_mean + (E(k)/length(E));
  end
disp(['N = 1000, Lambda = 0.5, Sample mean: ', num2str(sample_mean)]);

 sample_var = 0;
  for k = 1:length(E) - 1
        sample_var = sample_var + (((E(k) - sample_mean))^2 )/ (length(E) - 1);
  end
disp(['N = 1000, Lambda = 0.5, Sample variance: ', num2str(sample_var)]);



 
lambda = 5;       %Rate parameter
 N = 1000;
 nbins = 100;
 X = rand(N,1);
 E = -log(X)*lambda;
 figure
 hist(E, nbins);
 xlabel('Value'); ylabel('Count'); 
 title('Exponential distribution with lambda of 5')
 
 
sample_mean = 0;
  for k = 1:length(E)
        sample_mean = sample_mean + (E(k)/length(E));
  end
disp(['N = 1000, Lambda = 5, Sample mean: ', num2str(sample_mean)]);

 sample_var = 0;
  for k = 1:length(E) - 1
        sample_var = sample_var + (((E(k) - sample_mean))^2 )/ (length(E) - 1);
  end
disp(['N = 1000, Lambda = 5, Sample variance: ', num2str(sample_var)]);


 %2(d) As Lambda increases, the tail of the Exponential Distribution
 %becomes longer and it becomes more flat at the end. 
 
 
 
 
 
 