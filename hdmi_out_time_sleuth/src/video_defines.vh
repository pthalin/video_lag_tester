
`define HDMI_1280x720
//`define HDMI_1024x768
//`define HDMI_800x600
//`define HDMI_640x480
//`define HDMI_720x576
//`define HDMI_720x480
//`define HDMI_720p
//`define HDMI_NTSC
//`define HDMI_PAL

`define PIXEL_CLOCK_200 0
`define PIXEL_CLOCK_325 1
`define PIXEL_CLOCK_371_25  2
`define PIXEL_CLOCK_135 3
`define PIXEL_CLOCK_126 4


//ref https://tomverbeure.github.io/video_timings_calculator

// 0:negetive ploarity
// 1：positive polarity
`define H_SYNC_POLARITY 1'b1
`define V_SYNC_POLARITY 1'b1

`ifdef HDMI_800x600
  `define PIXEL_CLOCK `PIXEL_CLOCK_200
  `define H_TOTAL     12'd1056
  `define H_SYNC      12'd128
  `define H_BPORCH    12'd88
  `define H_RES       12'd800
  `define V_TOTAL     12'd628
  `define V_SYNC      12'd4
  `define V_BPORCH    12'd23
  `define V_RES       12'd600
`endif

`ifdef HDMI_1024x768
  `define PIXEL_CLOCK `PIXEL_CLOCK_325
  `define H_TOTAL     12'd1344
  `define H_SYNC      12'd136
  `define H_BPORCH    12'd160
  `define H_RES       12'd1024
  `define V_TOTAL     12'd806
  `define V_SYNC      12'd6
  `define V_BPORCH    12'd29
  `define V_RES       12'd768
`endif

`ifdef HDMI_720p
`define HDMI_1280x720
`endif

`ifdef HDMI_1280x720
  `define PIXEL_CLOCK `PIXEL_CLOCK_371_25
  `define H_TOTAL     12'd1650
  `define H_SYNC      12'd40
  `define H_BPORCH    12'd220
  `define H_RES       12'd1280
  `define V_TOTAL     12'd750
  `define V_SYNC      12'd5
  `define V_BPORCH    12'd20
  `define V_RES       12'd720
`endif

`ifdef HDMI_640x480
  `define PIXEL_CLOCK `PIXEL_CLOCK_126
  `define H_TOTAL     12'd800
  `define H_SYNC      12'd96
  `define H_BPORCH    12'd40
  `define H_RES       12'd640
  `define V_TOTAL     12'd525
  `define V_SYNC      12'd2
  `define V_BPORCH    12'd25
  `define V_RES       12'd480
`endif

`ifdef HDMI_720x576
  `define HDMI_PAL
`endif

`ifdef HDMI_PAL
  `define PIXEL_CLOCK `PIXEL_CLOCK_135
  `define H_TOTAL     12'd864
  `define H_SYNC      12'd64
  `define H_BPORCH    12'd68
  `define H_RES       12'd720
  `define V_TOTAL     12'd625
  `define V_SYNC      12'd5
  `define V_BPORCH    12'd39
  `define V_RES       12'd576
`endif

`ifdef HDMI_720x480
  `define HDMI_NTSC
`endif

`ifdef HDMI_NTSC
  `define PIXEL_CLOCK `PIXEL_CLOCK_135
  `define H_TOTAL     12'd858
  `define H_SYNC      12'd62
  `define H_BPORCH    12'd60
  `define H_RES       12'd720
  `define V_TOTAL     12'd525
  `define V_SYNC      12'd6
  `define V_BPORCH    12'd30
  `define V_RES       12'd480
`endif