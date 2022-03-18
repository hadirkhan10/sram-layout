* hand written spice for the memory array
.subckt cell_1rw BL BR VGND VPWR VPB VNB WL
* Access transistors (medium strength)
X0 QB WL BR VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15
X2 BL WL Q VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15

* inverter 1 PD transistor (strong strength)
X1 Q QB VGND VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15
* inverter 1 PU transistor (weak strength)
X6 Q QB VPWR VPB sky130_fd_pr__pfet_01v8 w=0.42 l=0.18

* inverter 2 PU transistor (weak strength)
X5 VPWR Q QB VPB sky130_fd_pr__pfet_01v8 w=0.42 l=0.18
* inverter 2 PD transistor (strong strength)
X7 VGND Q QB VNB sky130_fd_pr__nfet_01v8 w=0.36 l=0.15
.ends

.subckt array WL0 WL1 WL2 BL0 BL1 BL2 BR0 BR1 BR2 VGND VPWR
Xc11 BL0 BR0 VGND VPWR VPWR VGND WL0 cell_1rw 
Xc12 BL1 BR1 VGND VPWR VPWR VGND WL0 cell_1rw 
Xc13 BL2 BR2 VGND VPWR VPWR VGND WL0 cell_1rw 
Xc21 BL0 BR0 VGND VPWR VPWR VGND WL1 cell_1rw 
Xc22 BL1 BR1 VGND VPWR VPWR VGND WL1 cell_1rw 
Xc23 BL2 BR2 VGND VPWR VPWR VGND WL1 cell_1rw 
Xc31 BL0 BR0 VGND VPWR VPWR VGND WL2 cell_1rw 
Xc32 BL1 BR1 VGND VPWR VPWR VGND WL2 cell_1rw 
Xc33 BL2 BR2 VGND VPWR VPWR VGND WL2 cell_1rw 
.ends
