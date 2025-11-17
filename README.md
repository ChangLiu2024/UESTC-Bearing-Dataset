# UESTC-Bearing-Dataset
## 1. Dataset Overview
This dataset consists of vibration data collected from a laboratory test bench, including 4 bearing health conditions and 4 rotational speeds. The dataset is open-source and can be used for any bearing fault detection research. Publications utilizing this dataset are required to cite the following paper.

C. Liu et al., "A New Target Domain One-Class Learning Bearing Fault Detection Framework", doi: currently unassigned.

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
This dataset use a single axis VALENIAN piezoelectric acceleration sensor with a sensitivity of 10.22 mV/m·s². The sampling frequency is set as 20 kHz.

### Working Condition
During the data collection process, the equipment operates without any load. Data collection is completed at four rotational speeds: rpm = 800, 1000, 1200, and 1400.

## 3. Dataset Description
This dataset contains a total of 80 data files in .mat format. The explanation of the file names is as follows: Take the data file N_1000_3.mat as an example. "N" indicates that the bearing is in a normal health condition (for the correspondence between letter codes and fault types, see Section 2). "1000" means the data was collected when the motor rotational speed was 1000 rpm. "3" means this data file is the third one among the N_1000 data files series (in fact, the five sets of data from N_1000_1 to N_1000_5 were collected continuously and divided into five data files only for the convenience of storage).

Each .mat file should focus on the following attributes:

Data:            The collected single-axis vibration data.

Datacount:       The number of data points in this data file.

SampleFrequency: Sampling frequency.

