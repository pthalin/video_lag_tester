# Video Lag Tester

Based on source code for [Time sleuth](https://github.com/chriz2600/time-sleuth)

Created by by Patrik's Retro Tech\
[Instagram](https://www.instagram.com/patriksretrotech/)\
[YouTube](https://www.youtube.com/channel/UCaFWrgS4kNwspYCvaff0Wjg)\
[Twitter](https://twitter.com/patriksretrotec/)\
[Facebook](https://facebook.com/patriksretrotech)




## Flash firmware
Download and unpack the release zip file. Plugin a USB-C cable. No driver needs to be installed.

### Linux:
Install [openFPGALoader](https://github.com/trabucayre/openFPGALoader)

run:\
openFPGALoader -b tangnano4k -f firmware\\video_lag_tester_720p60.fs

### Windows:
Double click on "load_720p.cmd"


## Build

Use: Gowin FPGA Designer 1.9.8.03 Education

## Hardware
Sipeed Tang Nano 4K FPGA board\
Photo transistor for visable light with clear case\
PNP Transistor e.g. BC547\
1k and 100k Resistor

## Schematic and how to build\
![](images/schematics.jpg)
![](images/pcb_front.jpg)\
![](images/pcb_back.jpg)


