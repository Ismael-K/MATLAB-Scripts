# MATLAB-Scripts


An example of Amplitude modulation by adding sinusoids of the same frequency using the Beat function with 200 Hz center frequency.  
<p align="center">
<img width="586" alt="am beatnote2" src="https://user-images.githubusercontent.com/17348315/40556017-119ee9da-6019-11e8-8732-8198db34aecd.png">



Interpolation is the reconstruction of the continuous-time signal from its discrete-time digital samples. This process for signal reconstruction is used in digital-to-analog converters.  A low-pass filter is needed in the interpolation process to bandlimit the signal to satisfy the sampling criteria.  Since the ideal low-pass filter is difficult to construct, a Zero-Order Hold and Linear Interpolator are used to approximate this low-pass filter.


Bandlimited_Interpolation outputs the impulse response of the Linear Interpolator and the Zero-Order Hold.
<p align="center">
<img width="483" alt="impulse response" src="https://user-images.githubusercontent.com/17348315/40630204-a1f60b76-629e-11e8-8f29-345fe73cb54d.PNG">



Frequency response of signal reconstruction methods using fft
<p align="center">
<img width="576" alt="freqrespzoh" src="https://user-images.githubusercontent.com/17348315/40560675-b98d008c-6028-11e8-9ec9-67f5a8769320.png">
