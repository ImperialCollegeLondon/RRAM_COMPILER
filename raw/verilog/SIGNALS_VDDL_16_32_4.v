//-----------------------------------------------//
// THIS CODE HAS BEEN GENERATED BY RRAM COMPILER //
//-----------------------------------------------//

//-----------------------------------------------------
// Design Name 	: signals_vddl
// File Name   	: signals_vddl.v
// Function    	: signals_vddl
// Coder       	: Dimitris Antoniadis
// Date			: 15/07/2021
//-----------------------------------------------------

`include "/ibe/users/da220/Cadence/WORK_TSMC180FORTE/DIGITAL/rtl/level_down/level_down.v"
`include "/ibe/users/da220/Cadence/WORK_TSMC180FORTE/DIGITAL/rtl/tristate_buffer/tristate_buffer.v"

// NAME MODIFIED //
module SIGNALS_VDDL_16_32_4(
// END MODIFY NAME //
WRITE_VDDH,
READ_VDDH,
DVLP_H,
PRE_H,
SA_EN_H,
dummy_en,
WRITE_VDDL,
NOT_WRITE_VDDL,
READ_VDDL_1,
NOT_READ_VDDL_1,
READ_VDDL_2,
NOT_READ_VDDL_2,
DVLP_L,
PRE_L,
Z_SA,
Z_WR,
Z_BUS,
SA_EN_L,
);

// SKILL MODIFICATIONS //
parameter B_SIZE = 4;
// END OF SKILL MODIFICATION //

// Inputs
input	WRITE_VDDH;
input	READ_VDDH;
input	DVLP_H;
input	PRE_H;
input	SA_EN_H;
input	dummy_en;

// Input Ouput
inout	[B_SIZE-1:0] Z_SA;
inout	[B_SIZE-1:0] Z_WR;
inout	[B_SIZE-1:0] Z_BUS;

// Outputs
output	WRITE_VDDL;
output	NOT_WRITE_VDDL;
output	READ_VDDL_1;
output	NOT_READ_VDDL_1;
output	READ_VDDL_2;
output	NOT_READ_VDDL_2;
output 	DVLP_L;
output	PRE_L;
output	SA_EN_L;

// Wires
wire	WRITE_VDDH;
wire	READ_VDDH;
wire	DVLP_H;
wire	PRE_H;
wire	SA_EN_H;
wire	dummy_en;
wire	WRITE_VDDL;
wire	NOT_WRITE_VDDL;
wire	READ_VDDL_1;
wire	NOT_READ_VDDL_1;
wire	READ_VDDL_2;
wire	NOT_READ_VDDL_2;
wire 	DVLP_L;
wire	PRE_L;
wire	SA_EN_L;
wire	[B_SIZE-1:0] Z_BUS;
wire	[B_SIZE-1:0] Z_SA;
wire	[B_SIZE-1:0] Z_WR;



level_down U1(WRITE_VDDH, WRITE_VDDL, dummy_en, NOT_WRITE_VDDL);
level_down U2(READ_VDDH, READ_VDDL_1, dummy_en, NOT_READ_VDDL_1);
level_down U3(READ_VDDH, READ_VDDL_2, dummy_en, NOT_READ_VDDL_2);
level_down U4(DVLP_H, DVLP_L, dummy_en,);
level_down U5(PRE_H, PRE_L, dummy_en,);
level_down U6(SA_EN_H, SA_EN_L, dummy_en,);
tristate_buffer #(B_SIZE) U7(
.Z_SA	(Z_SA),
.Z_WR	(Z_WR),
.Z_BUS	(Z_BUS),
.OE		(SA_EN_L)
);

endmodule