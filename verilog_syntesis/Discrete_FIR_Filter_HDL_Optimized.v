// -------------------------------------------------------------
// 
// File Name: hdl_project_verilog\hdlsrc\project_detect\Discrete_FIR_Filter_HDL_Optimized.v
// Created: 2021-02-13 17:18:24
// 
// Generated by MATLAB 9.9 and HDL Coder 3.17
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Discrete_FIR_Filter_HDL_Optimized
// Source Path: project_detect/Pulse Detector/Discrete FIR Filter HDL Optimized
// Hierarchy Level: 1
// 
// Discrete FIR Filter HDL Optimized
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Discrete_FIR_Filter_HDL_Optimized
          (clk,
           reset,
           enb,
           dataIn_re,
           dataIn_im,
           validIn,
           dataOut_re,
           dataOut_im,
           validOut);


  input   clk;
  input   reset;
  input   enb;
  input   signed [15:0] dataIn_re;  // sfix16_En14
  input   signed [15:0] dataIn_im;  // sfix16_En14
  input   validIn;
  output  signed [39:0] dataOut_re;  // sfix40_En37
  output  signed [39:0] dataOut_im;  // sfix40_En37
  output  validOut;




  FilterBank u_FilterBank (.clk(clk),
                           .reset(reset),
                           .enb(enb),
                           .dataIn_re(dataIn_re),  // sfix16_En14
                           .dataIn_im(dataIn_im),  // sfix16_En14
                           .validIn(validIn),
                           .dataOut_re(dataOut_re),  // sfix40_En37
                           .dataOut_im(dataOut_im),  // sfix40_En37
                           .validOut(validOut)
                           );

endmodule  // Discrete_FIR_Filter_HDL_Optimized

