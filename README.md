# UESTC-Bearing-Dataset
## 1. Dataset Overview
This dataset consists of vibration data collected from a laboratory test bench, including 4 bearing health conditions and 4 rotational speeds. The dataset is open-source and can be used for any bearing fault detection research. Publications utilizing this dataset are required to cite the following paper.

C. Liu et al., A New Target Domain One-Class Learning Bearing Fault Detection Framework, doi: xxx

<img width="520" height="347" alt="设备照片" src="https://github.com/user-attachments/assets/9e043c9d-5533-4e09-9394-977511f104d4" />

Fig. 1 Test rig for UESTC Bearing Dataset

## 2. Details of Experiment
### Tested Bearings
All the test bearings are ASAHI UCPH 20. In this experiment, the tested bearings have four health conditions: Normal (N), Ball fault (B), Inner race fault (I), and Outer race fault (O). The specific information about the faults is shown in Table I.

Table I. Bearing Faults Details
|Fault Type|Details|
|----------|-------|
|B         |pit with a diameter of 3 mm and a depth of 5 mm made on one of the rolling balls|
|I and O   |wire-cutting damage, with a width and depth of 0.55 mm and 1 mm|

### Sensor
This dataset use a VALENIAN piezoelectric acceleration sensor with a sensitivity of 10.22 mV/m·s². The sampling frequency is set as 20 kHz.

### Working Condition
During the data collection process, the equipment operates without any load. Data collection is completed at four rotational speeds: rpm = 800, 1000, 1200, and 1400.

## 3. Dataset Description

