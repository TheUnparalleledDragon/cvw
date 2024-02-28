///////////////////////////////////////////
// aes64ds.sv
//
// Written: ryan.swann@okstate.edu, james.stine@okstate.edu
// Created: 20 February 2024
//
// Purpose: aes64ds instruction
//
// A component of the CORE-V-WALLY configurable RISC-V project.
// https://github.com/openhwgroup/cvw
// 
// Copyright (C) 2021-24 Harvey Mudd College & Oklahoma State University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file 
// except in compliance with the License, or, at your option, the Apache License version 2.0. You 
// may obtain a copy of the License at
//
// https://solderpad.org/licenses/SHL-2.1/
//
// Unless required by applicable law or agreed to in writing, any work distributed under the 
// License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
// either express or implied. See the License for the specific language governing permissions 
// and limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////

module aes64ds(input logic [63:0] rs1,
               input logic [63:0]  rs2,
               output logic [63:0] Data_Out);
   
   // Intermediary Logic
   logic [127:0] 		   ShiftRow_Out;
   logic [31:0] 		   Sbox_Out_0;
   logic [31:0] 		   Sbox_Out_1;    
   
   // Apply inverse shiftrows to rs2 and rs1
   aes_Inv_shiftrow srow(.DataIn({rs2,rs1}), .DataOut(ShiftRow_Out));
   
   // Apply full word inverse substitution to lower 2 words of shiftrow out
   aes_Inv_sbox_word inv_sbox_0(.in(ShiftRow_Out[31:0]), .out(Sbox_Out_0));
   aes_Inv_sbox_word inv_sbox_1(.in(ShiftRow_Out[63:32]), .out(Sbox_Out_1));
   
   // Concatenate the two substitution outputs to get result
   assign Data_Out = {Sbox_Out_1, Sbox_Out_0};   
endmodule
