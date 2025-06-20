# Project - Digital Signal Processing - Modulation and Signal Transmission

## Course Information

- **Matriculation Number:** 221607  
- **Course:** Master of Mechatronics and Robotics  
- **Semester:** Sommersemester 2024  
- **Subject:** Digital Signal Processing  
- **Supervisor:** Prof. Dr.-Ing. Nicolaj Stache (Heilbronn University)

---

## Project Overview

This project demonstrates the transmission of two digital signals over a shared communication medium using modulation techniques. It explores signal generation, low-pass filtering, modulation/demodulation, and signal reconstruction using both time-domain and frequency-domain approaches (DFT/FFT).

Key objectives include:
- Modulation of two audio signals with non-overlapping frequency bands.
- Efficient signal transmission and accurate reconstruction.
- Comparative analysis using FFT, convolution methods, and various modulation techniques.

---

## Tools & Technologies

- **Software:** MATLAB 
- **Languages:** MATLAB `.mlx` Live Scripts and `.m` functions
- **Audio Files:** `.mp3` format (e.g., `orchestra1.mp3`, `Song2.mp3`)

---

## Project Structure

```plaintext
📂 Sounds/
├── orchestra1.mp3
├── Song2.mp3

📜 .mlx Files
├── SignalCreation.mlx                      # Generates synthetic or audio signals
├── LowPassFilter.mlx                      # Low-pass filtering using time domain
├── DFT.mlx                                # Discrete Fourier Transform by matrix multiplication
├── FFTrecursiv.mlx                        # Recursive implementation of FFT
├── FFTiterativ.mlx                        # Iterative implementation of FFT
├── LowPassFilterFFT.mlx                   # Fast convolution using FFT
├── Modulation_Demodulation.mlx           # Modulation and demodulation of signals
├── Quadrature_Modulation_Demodulation.mlx
├── SingleSide_Modulation_Demodulation.mlx

📜 .m Files
├── custom_bit_reorder.m
├── DFTcalc.m
├── FFT.m
├── FFTplot.m
├── iFFT.m
├── lowpassfilter.m

---

## 📝 Project Summary

In this project, digital signal processing for the transmission of two signals over a common medium was comprehensively investigated. The MATLAB implementation included low-pass filtering, modulation, and demodulation of the signals. It was demonstrated that the choice of filter parameters, particularly the use of the Hamming window, significantly reduces rippling effects.

A comparison between DFT and FFT underlined the substantial efficiency gains offered by FFT, especially for longer signals. The project also emphasized the importance of selecting an optimal block length for frequency-domain filtering.

Further analysis of various window functions and the study of aliasing effects confirmed theoretical predictions and highlighted the critical need for careful parameter selection.

Overall, this project provides a solid foundation for further exploration and application in the field of digital signal processing.
