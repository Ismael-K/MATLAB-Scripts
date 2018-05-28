# MATLAB-Scripts


An example of amplitude modulation (AM) by adding sinusoids of the same frequency using the Beat function with 200 Hz center frequency.  
<p align="center">
<img width="586" alt="am beatnote2" src="https://user-images.githubusercontent.com/17348315/40556017-119ee9da-6019-11e8-8732-8198db34aecd.png">



Interpolation is the reconstruction of the continuous-time signal from its discrete-time digital samples. This process for signal reconstruction is used in digital-to-analog converters.  A low-pass filter (LPF) is needed in the interpolation process to bandlimit the signal to satisfy the sampling criteria.  Since the ideal low-pass filter is difficult to construct, a Zero-Order Hold (ZOH) and Linear Interpolator are used to approximate this low-pass filter.


Bandlimited_Interpolation outputs the impulse response of the Linear Interpolator and the Zero-Order Hold.
<p align="center">
<img width="483" alt="impulse response" src="https://user-images.githubusercontent.com/17348315/40630204-a1f60b76-629e-11e8-8f29-345fe73cb54d.PNG">



The magnitude of the frequency responses of the signal reconstruction methods is obtained by using fft.  Note the cutoff frequency of the filter is π/5 because a value of L = 5 was used in the impulse response plots.  In the passband, the ZOH best approximates the ideal LPF but the ZOH results in large sidelobes in the stopband.  The low amplitude of the sidelobes in the Linear Interpolator frequency response show that it is a better choice in minimizing spectral leakage and tracking the stopband of the ideal LPF.     

<p align="center">
<img width="576" alt="freqrespzoh" src="https://user-images.githubusercontent.com/17348315/40560675-b98d008c-6028-11e8-9ec9-67f5a8769320.png">
