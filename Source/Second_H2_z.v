// -------------------------------------------------------------
// 
// File Name: D:\Kursach\hdlsrc\CIC_fixp1\Second_H2_z.v
// Created: 2020-11-16 22:11:48
// 
// Generated by MATLAB 9.3 and HDL Coder 3.11
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Second_H2_z
// Source Path: CIC_fixp1/CIC/Second H2(z)
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Second_H2_z
          (clk,
           reset,
           enb_1_2_0,
           In,
           Out2);


  input   clk;
  input   reset;
  input   enb_1_2_0;
  input   signed [21:0] In;  // sfix22_En17
  output  signed [20:0] Out2;  // sfix21_En16

  reg signed [21:0] Delay_out1;  // sfix22_En17
  wire signed [22:0] Add_add_cast;  // sfix23_En17
  wire signed [22:0] Add_add_cast_1;  // sfix23_En17
  wire signed [22:0] Add_add_temp;  // sfix23_En17
  wire signed [20:0] Add_out1;  // sfix21_En15
  reg signed [20:0] Delay1_out1;  // sfix21_En15
  wire signed [21:0] Add1_add_cast;  // sfix22_En15
  wire signed [21:0] Add1_add_cast_1;  // sfix22_En15
  wire signed [21:0] Add1_out1;  // sfix22_En15
  reg signed [21:0] Delay2_out1;  // sfix22_En15
  wire signed [22:0] Add2_add_cast;  // sfix23_En15
  wire signed [22:0] Add2_add_cast_1;  // sfix23_En15
  wire signed [22:0] Add2_out1;  // sfix23_En15
  reg signed [22:0] Delay3_out1;  // sfix23_En15
  wire signed [23:0] Add3_add_cast;  // sfix24_En15
  wire signed [23:0] Add3_add_cast_1;  // sfix24_En15
  wire signed [23:0] Add3_out1;  // sfix24_En15
  reg signed [23:0] Delay4_out1;  // sfix24_En15
  wire signed [24:0] Add4_add_cast;  // sfix25_En15
  wire signed [24:0] Add4_add_cast_1;  // sfix25_En15
  wire signed [24:0] Add4_out1;  // sfix25_En15
  wire signed [49:0] Gain2_cast;  // sfix50_En43
  wire signed [21:0] Gain2_out1;  // sfix22_En17
  reg signed [21:0] Delay5_out1;  // sfix22_En17
  wire signed [22:0] Add5_add_cast;  // sfix23_En17
  wire signed [22:0] Add5_add_cast_1;  // sfix23_En17
  wire signed [22:0] Add5_add_temp;  // sfix23_En17
  wire signed [21:0] Add5_out1;  // sfix22_En16
  reg signed [21:0] Delay6_out1;  // sfix22_En16
  wire signed [22:0] Add6_add_cast;  // sfix23_En16
  wire signed [22:0] Add6_add_cast_1;  // sfix23_En16
  wire signed [22:0] Add6_out1;  // sfix23_En16
  reg signed [22:0] Delay7_out1;  // sfix23_En16
  wire signed [23:0] Add7_add_cast;  // sfix24_En16
  wire signed [23:0] Add7_add_cast_1;  // sfix24_En16
  wire signed [23:0] Add7_out1;  // sfix24_En16
  reg signed [23:0] Delay8_out1;  // sfix24_En16
  wire signed [24:0] Add8_add_cast;  // sfix25_En16
  wire signed [24:0] Add8_add_cast_1;  // sfix25_En16
  wire signed [24:0] Add8_out1;  // sfix25_En16
  reg signed [24:0] Delay9_out1;  // sfix25_En16
  wire signed [25:0] Add9_add_cast;  // sfix26_En16
  wire signed [25:0] Add9_add_cast_1;  // sfix26_En16
  wire signed [25:0] Add9_add_temp;  // sfix26_En16
  wire signed [24:0] Add9_out1;  // sfix25_En15
  wire signed [49:0] Gain1_cast;  // sfix50_En43
  wire signed [20:0] Gain1_out1;  // sfix21_En16


  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 22'sb0000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay_out1 <= In;
        end
      end
    end



  assign Add_add_cast = {In[21], In};
  assign Add_add_cast_1 = {Delay_out1[21], Delay_out1};
  assign Add_add_temp = Add_add_cast + Add_add_cast_1;
  assign Add_out1 = Add_add_temp[22:2];



  always @(posedge clk or posedge reset)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_out1 <= 21'sb000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay1_out1 <= Add_out1;
        end
      end
    end



  assign Add1_add_cast = {Add_out1[20], Add_out1};
  assign Add1_add_cast_1 = {Delay1_out1[20], Delay1_out1};
  assign Add1_out1 = Add1_add_cast + Add1_add_cast_1;



  always @(posedge clk or posedge reset)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_out1 <= 22'sb0000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay2_out1 <= Add1_out1;
        end
      end
    end



  assign Add2_add_cast = {Add1_out1[21], Add1_out1};
  assign Add2_add_cast_1 = {Delay2_out1[21], Delay2_out1};
  assign Add2_out1 = Add2_add_cast + Add2_add_cast_1;



  always @(posedge clk or posedge reset)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_out1 <= 23'sb00000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay3_out1 <= Add2_out1;
        end
      end
    end



  assign Add3_add_cast = {Add2_out1[22], Add2_out1};
  assign Add3_add_cast_1 = {Delay3_out1[22], Delay3_out1};
  assign Add3_out1 = Add3_add_cast + Add3_add_cast_1;



  always @(posedge clk or posedge reset)
    begin : Delay4_process
      if (reset == 1'b1) begin
        Delay4_out1 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay4_out1 <= Add3_out1;
        end
      end
    end



  assign Add4_add_cast = {Add3_out1[23], Add3_out1};
  assign Add4_add_cast_1 = {Delay4_out1[23], Delay4_out1};
  assign Add4_out1 = Add4_add_cast + Add4_add_cast_1;



  assign Gain2_cast = {{2{Add4_out1[24]}}, {Add4_out1, 23'b00000000000000000000000}};
  assign Gain2_out1 = Gain2_cast[47:26];



  always @(posedge clk or posedge reset)
    begin : Delay5_process
      if (reset == 1'b1) begin
        Delay5_out1 <= 22'sb0000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay5_out1 <= Gain2_out1;
        end
      end
    end



  assign Add5_add_cast = {Gain2_out1[21], Gain2_out1};
  assign Add5_add_cast_1 = {Delay5_out1[21], Delay5_out1};
  assign Add5_add_temp = Add5_add_cast + Add5_add_cast_1;
  assign Add5_out1 = Add5_add_temp[22:1];



  always @(posedge clk or posedge reset)
    begin : Delay6_process
      if (reset == 1'b1) begin
        Delay6_out1 <= 22'sb0000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay6_out1 <= Add5_out1;
        end
      end
    end



  assign Add6_add_cast = {Add5_out1[21], Add5_out1};
  assign Add6_add_cast_1 = {Delay6_out1[21], Delay6_out1};
  assign Add6_out1 = Add6_add_cast + Add6_add_cast_1;



  always @(posedge clk or posedge reset)
    begin : Delay7_process
      if (reset == 1'b1) begin
        Delay7_out1 <= 23'sb00000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay7_out1 <= Add6_out1;
        end
      end
    end



  assign Add7_add_cast = {Add6_out1[22], Add6_out1};
  assign Add7_add_cast_1 = {Delay7_out1[22], Delay7_out1};
  assign Add7_out1 = Add7_add_cast + Add7_add_cast_1;



  always @(posedge clk or posedge reset)
    begin : Delay8_process
      if (reset == 1'b1) begin
        Delay8_out1 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay8_out1 <= Add7_out1;
        end
      end
    end



  assign Add8_add_cast = {Add7_out1[23], Add7_out1};
  assign Add8_add_cast_1 = {Delay8_out1[23], Delay8_out1};
  assign Add8_out1 = Add8_add_cast + Add8_add_cast_1;



  always @(posedge clk or posedge reset)
    begin : Delay9_process
      if (reset == 1'b1) begin
        Delay9_out1 <= 25'sb0000000000000000000000000;
      end
      else begin
        if (enb_1_2_0) begin
          Delay9_out1 <= Add8_out1;
        end
      end
    end



  assign Add9_add_cast = {Add8_out1[24], Add8_out1};
  assign Add9_add_cast_1 = {Delay9_out1[24], Delay9_out1};
  assign Add9_add_temp = Add9_add_cast + Add9_add_cast_1;
  assign Add9_out1 = Add9_add_temp[25:1];



  assign Gain1_cast = {{2{Add9_out1[24]}}, {Add9_out1, 23'b00000000000000000000000}};
  assign Gain1_out1 = Gain1_cast[47:27];



  assign Out2 = Gain1_out1;

endmodule  // Second_H2_z
