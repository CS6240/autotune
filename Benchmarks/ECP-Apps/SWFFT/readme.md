This directory includes the codes and scripts for using ytopt to autotune the SWFFT Version 1.0, which is one of ECP Proxy Applications 
(https://git.cels.anl.gov/hacc/SWFFT). It requires installing ytopt conda environment (https://github.com/ytopt-team/ytopt) 
and fftw3 (http://www.fftw.org). For the MPI/OpenMP application, it requires MPI and OpenMP programming environments. You can test it at small scale, 
however, make sure to change the compilers to yours.

The list of folders:
```
Summit        Autotuning scripts and needed codes on Summit
Theta         Autotuning scripts and needed codes on Theta
swfft.zip     The zip file including both folders Summit and Theta
```
