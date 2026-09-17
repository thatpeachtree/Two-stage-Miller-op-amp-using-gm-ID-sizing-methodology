# Two-Stage CMOS Op-Amp using gm/Id (Sky130 PDK)
A two-stage operational amplifier designed in the SkyWater Sky130 PDK using the gm/Id sizing method. The schematic was built in Xschem and simulated in Ngspice.

<img width="761" height="387" alt="image" src="https://github.com/user-attachments/assets/370899cb-5c05-42f5-ab13-51bf0ee4c9b6" />

## Results

|Parameter|Result|Target|
|--|--|--|
|DC gain|51.67dB|>50|
|Gain bandwidth (GBW) (Hz)|15.45M|>5M|
|Phase margin|80°|>60°|
|Slew rate (V/µs)|6.31|>5|
|Output swing (V)|±0.9 V|±0.9 V|
|Supply voltage|2.5V|2.5V|
|Load capacitance (pF)|5|5|

## Design Process Summary
### 1. Topology
The amplifier uses a differential input pair with an active load (stage 1, the high-gain stage) and a common-source output stage (stage 2, the high-swing stage), with Miller compensation between the stages.

### 2. Sizing with gm/Id lookup tables
Instead of relying on square-law equations, which are inaccurate for short-channel devices, I sized transistors using gm/Id lookup curves generated from Sky130 device simulations. Graphs were generated using [chennakeshavadasa's project](https://github.com/chennakeshavadasa/gmid_SKY130/tree/master) as a baseline.

Other than input transistors M1 and M2, whose gm depends on GBW, load capacitance, and phase margin, I used this process to size my transistors:

- Chose a gm/Id value for each transistor based on its role: [e.g. high gm/Id for high gain and efficiency (input transistors), lower gm/Id for current mirrors for better matching]. All of my transistors were in the moderate inversion range (gm/Id = 10-15).
- Found the needed gm from chosen gm/Id value and Id (can be approximated via current mirror proportions).
- Chose a length and used Id/W curves to get a transistor width.
- Used the Id/W curves to get transistor widths for the chosen channel length.
- Adjusted W values as necessary to meet specifications.
- Optional #1: To get a theoretical value for dc gain, I used the intrinsic gain curves (gm/gds vs gm/Id).
- Optional #2: To get ballpark W/L values, I first used overdrive voltage curves (Vov vs gm/Id) and square law: $`I_D = \frac{1}{2}\mu C_{ox}\frac{W}{L}(V_{GS} - V_{TH})^2`$.

### 3. Compensation
Miller capacitor Cc (3 pF) was chosen using $`Cc=0.2 \times CL`$, where CL is load capacitance and which allows for a phase margin of about 60°. The value of the capacitance was adjusted as necessary to meet slew rate. This formula was taken from Holberg/Allen's CMOS Analog Circuit Design (1987).

Miller resistor R1 (10.34K) was chosen by taking 1/gm and was calculated according to gm1/gm2's value, which was at $`3.80 \times 10^{-5}`$.

### 4. Dimensions
|Transistor|W(µm)|L(µm)|W/L|
|--|--|--|--|
|M1|45|1.5|30|
|M2|45|1.5|30|
|M3|4.03|1.25|3.22|
|M4|4.03|1.25|3.22|
|M5|3.22|1|3.22|
|M6|53|2|26.5|
|M7|12.8|1|12.8|
|M8|0.8|1|0.8|

## Simulation results
### Gain/Phase testbench
<img width="770" height="415" alt="image" src="https://github.com/user-attachments/assets/8277fb14-5efe-42e0-96be-33bcbb3786e5" />

#### Gain
<img width="896" height="491" alt="image" src="https://github.com/user-attachments/assets/d1b474c2-5e22-44e2-ac49-8454420fadf9" />

#### Phase
<img width="892" height="482" alt="image" src="https://github.com/user-attachments/assets/d3cfca3b-62ff-4ddb-b2b4-74c21f0530aa" />

#### Gain and Phase
<img width="873" height="494" alt="image" src="https://github.com/user-attachments/assets/569a5901-adff-4069-878c-fae7acbad910" />

### Slew rate testbench
<img width="804" height="410" alt="image" src="https://github.com/user-attachments/assets/92e77487-6cba-4cdc-988b-f8020efd44f7" />
<img width="895" height="496" alt="image" src="https://github.com/user-attachments/assets/edd03a17-d55e-449f-8fe9-e18a482df10b" />

Applying a square wave, find rising and falling slew rates by calculating the slope between the times it takes to get from 0% to 10% and 90% of the total step, 0.8V.
calculate the slope and compare points where the output voltage: $SR = \frac{\Delta V}{\Delta t}$. 

|Voltage at:||
|--|--|
|10%|0.98|
|90%|1.62|

| Marker | Time |
|---|---|
| `tr10` | 9.747 ns |
| `tr90` | 101.481 ns |
| `tf90` | 1014.649 ns |
| `tf10` | 1116.121 ns |

Transition times:

$$\Delta t_{rise} = t_{r90} - t_{r10} = 91.73\ \text{ns}$$

$$\Delta t_{fall} = t_{f10} - t_{f90} = 101.47\ \text{ns}$$

### Slew rate
$$SR = \frac{1.62 - 0.98}{\Delta t}$$

| Edge | $\Delta t$ (ns) | SR (V/µs) |
|---|---|---|
| Rise | 91.73 ns | **6.98** |
| Fall | 101.47 ns | **6.31** |

Take the smaller value, **6.31 V/µs** as the slew rate. 

## gm/Id plots I used
### NFET
<img width="1494" height="844" alt="image" src="https://github.com/user-attachments/assets/8f7a47cb-847b-43e3-9e9e-6a1fb994af6b" />
<img width="1462" height="838" alt="image" src="https://github.com/user-attachments/assets/90e75379-7072-4ae7-b5fd-54dcc6991f8a" />
<img width="1474" height="844" alt="image" src="https://github.com/user-attachments/assets/dc237601-c8ea-4ea4-b3ae-57e24cfd64bb" />

### PFET
<img width="1456" height="841" alt="image" src="https://github.com/user-attachments/assets/614ede5b-d37d-4f2d-9d48-e4d1b0387c07" />
<img width="1456" height="841" alt="image" src="https://github.com/user-attachments/assets/e6880f47-80b6-4821-ac65-a83e1c94e7d0" />
<img width="1447" height="823" alt="image" src="https://github.com/user-attachments/assets/1e43ebd0-86d6-463a-8a34-d546e966e349" />

