///////////////////////////////////////////
// tests.vh
//
// Written: David_Harris@hmc.edu 7 October 2021
// Modified: 
//
// Purpose: List of tests to apply
// 
// A component of the Wally configurable RISC-V project.
// 
// Copyright (C) 2021 Harvey Mudd College & Oklahoma State University
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, 
// modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software 
// is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS 
// BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT 
// OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
///////////////////////////////////////////

`define IMPERASTEST   "0"
`define RISCVARCHTEST "1"

string tvpaths[] = '{
    "../../tests/imperas-riscv-tests/work/",
    "../../addins/riscv-arch-test/work/"
};

  string imperas32mmu[] = '{
    `IMPERASTEST, 
    "rv32mmu/WALLY-MMU-SV32", "3000"
    //"rv32mmu/WALLY-PMP", "3000",
    //"rv32mmu/WALLY-PMA", "3000"
    };

  string imperas64mmu[] = '{
    `IMPERASTEST,
    "rv64mmu/WALLY-MMU-SV48", "3000",
    "rv64mmu/WALLY-MMU-SV39", "3000",
    "rv64mmu/WALLY-PMP", "3000"
    //"rv64mmu/WALLY-PMA", "3000"
  };

  
string imperas32f[] = '{
    `IMPERASTEST,
    "rv32f/I-FADD-S-01", "2000",
    "rv32f/I-FCLASS-S-01", "2000",
    "rv32f/I-FCVT-S-W-01", "2000",
    "rv32f/I-FCVT-S-WU-01", "2000",
    "rv32f/I-FCVT-W-S-01", "2000",
    "rv32f/I-FCVT-WU-S-01", "2000",
    "rv32f/I-FDIV-S-01", "2000",
    "rv32f/I-FEQ-S-01", "2000",
    "rv32f/I-FLE-S-01", "2000",
    "rv32f/I-FLT-S-01", "2000",
    "rv32f/I-FMADD-S-01", "2000",
    "rv32f/I-FMAX-S-01", "2000",
    "rv32f/I-FMIN-S-01", "2000",
    "rv32f/I-FMSUB-S-01", "2000",
    "rv32f/I-FMUL-S-01", "2000",
    "rv32f/I-FMV-W-X-01", "2000",
    "rv32f/I-FMV-X-W-01", "2000",
    "rv32f/I-FNMADD-S-01", "2000",
    "rv32f/I-FNMSUB-S-01", "2000",
    "rv32f/I-FSGNJ-S-01", "2000",
    "rv32f/I-FSGNJN-S-01", "2000",
    "rv32f/I-FSGNJX-S-01", "2000",
    "rv32f/I-FSQRT-S-01", "2000",
    "rv32f/I-FSW-01", "2000",
    "rv32f/I-FLW-01", "2110",
    "rv32f/I-FSUB-S-01", "2000"
  };

  string imperas64f[] = '{
    `IMPERASTEST,
    "rv64f/I-FLW-01", "2110",
    "rv64f/I-FMV-W-X-01", "2000",
    "rv64f/I-FMV-X-W-01", "2000",
    "rv64f/I-FSW-01", "2000",
    "rv64f/I-FCLASS-S-01", "2000",
    "rv64f/I-FADD-S-01", "2000",
   "rv64f/I-FCVT-S-L-01", "2000",
   "rv64f/I-FCVT-S-LU-01", "2000",
   "rv64f/I-FCVT-S-W-01", "2000",
   "rv64f/I-FCVT-S-WU-01", "2000",
    "rv64f/I-FCVT-L-S-01", "2000",
    "rv64f/I-FCVT-LU-S-01", "2000",
    "rv64f/I-FCVT-W-S-01", "2000",
    "rv64f/I-FCVT-WU-S-01", "2000",
    "rv64f/I-FDIV-S-01", "2000",
    "rv64f/I-FEQ-S-01", "2000",
    "rv64f/I-FLE-S-01", "2000",
    "rv64f/I-FLT-S-01", "2000",
    "rv64f/I-FMADD-S-01", "2000",
    "rv64f/I-FMAX-S-01", "2000",
    "rv64f/I-FMIN-S-01", "2000",
    "rv64f/I-FMSUB-S-01", "2000",
    "rv64f/I-FMUL-S-01", "2000",
    "rv64f/I-FNMADD-S-01", "2000",
    "rv64f/I-FNMSUB-S-01", "2000",
    "rv64f/I-FSGNJ-S-01", "2000",
    "rv64f/I-FSGNJN-S-01", "2000",
    "rv64f/I-FSGNJX-S-01", "2000",
    "rv64f/I-FSQRT-S-01", "2000",
    "rv64f/I-FSUB-S-01", "2000"
  };

  string imperas64d[] = '{
    `IMPERASTEST,
    "rv64d/I-FSD-01", "2000",
    "rv64d/I-FLD-01", "2420",
    "rv64d/I-FMV-X-D-01", "2000",
    "rv64d/I-FMV-D-X-01", "2000",
    "rv64d/I-FDIV-D-01", "2000",
    "rv64d/I-FNMADD-D-01", "2000",
    "rv64d/I-FNMSUB-D-01", "2000",
    "rv64d/I-FMSUB-D-01", "2000",
    "rv64d/I-FMAX-D-01", "2000",
    "rv64d/I-FMIN-D-01", "2000",
    "rv64d/I-FLE-D-01", "2000",
    "rv64d/I-FLT-D-01", "2000",
    "rv64d/I-FEQ-D-01", "2000",
    "rv64d/I-FADD-D-01", "2000",
    "rv64d/I-FCLASS-D-01", "2000",
    "rv64d/I-FMADD-D-01", "2000",
    "rv64d/I-FMUL-D-01", "2000",
    "rv64d/I-FSGNJ-D-01", "2000",
    "rv64d/I-FSGNJN-D-01", "2000",
    "rv64d/I-FSGNJX-D-01", "2000",
    "rv64d/I-FSQRT-D-01", "2000",
    "rv64d/I-FSUB-D-01", "2000",
   "rv64d/I-FCVT-D-L-01", "2000",
   "rv64d/I-FCVT-D-LU-01", "2000",
    "rv64d/I-FCVT-D-S-01", "2000", 
   "rv64d/I-FCVT-D-W-01", "2000",
   "rv64d/I-FCVT-D-WU-01", "2000",
    "rv64d/I-FCVT-L-D-01", "2000",
    "rv64d/I-FCVT-LU-D-01", "2000",
    "rv64d/I-FCVT-S-D-01", "2000", 
    "rv64d/I-FCVT-W-D-01", "2000",
    "rv64d/I-FCVT-WU-D-01", "2000"
};

  string imperas64a[] = '{
    `IMPERASTEST,
    "rv64a/WALLY-AMO", "2110",
    "rv64a/WALLY-LRSC", "2110"
  };

  string imperas64m[] = '{
    `IMPERASTEST,
    "rv64m/I-REMUW-01", "3000",
    "rv64m/I-REMW-01", "3000",
    "rv64m/I-DIVUW-01", "3000",
    "rv64m/I-DIVW-01", "3000",
    "rv64m/I-MUL-01", "3000",
    "rv64m/I-MULH-01", "3000",
    "rv64m/I-MULHSU-01", "3000",
    "rv64m/I-MULHU-01", "3000",
    "rv64m/I-MULW-01", "3000",
    "rv64m/I-DIV-01", "3000",
    "rv64m/I-DIVU-01", "3000",
    "rv64m/I-REM-01", "3000",
    "rv64m/I-REMU-01", "3000"
  };

  string imperas64c[] = '{
    `IMPERASTEST,
    "rv64ic/I-C-ADD-01", "3000",
    "rv64ic/I-C-ADDI-01", "3000",
    "rv64ic/I-C-ADDIW-01", "3000",
    "rv64ic/I-C-ADDW-01", "3000",
    "rv64ic/I-C-AND-01", "3000",
    "rv64ic/I-C-ANDI-01", "3000",
    "rv64ic/I-C-BEQZ-01", "3000",
    "rv64ic/I-C-BNEZ-01", "3000",
    "rv64ic/I-C-EBREAK-01", "2000",
    "rv64ic/I-C-J-01", "3000",
    "rv64ic/I-C-JALR-01", "4000",
    "rv64ic/I-C-JR-01", "4000",
    "rv64ic/I-C-LD-01", "3420",
    "rv64ic/I-C-LDSP-01", "3420",
    "rv64ic/I-C-LI-01", "3000",
    "rv64ic/I-C-LUI-01", "2000",
    "rv64ic/I-C-LW-01", "3110",
    "rv64ic/I-C-LWSP-01", "3110",
    "rv64ic/I-C-MV-01", "3000",
    "rv64ic/I-C-NOP-01", "2000",
    "rv64ic/I-C-OR-01", "3000",
    "rv64ic/I-C-SD-01", "3000",
    "rv64ic/I-C-SDSP-01", "3000",
    "rv64ic/I-C-SLLI-01", "3000",
    "rv64ic/I-C-SRAI-01", "3000",
    "rv64ic/I-C-SRLI-01", "3000",
    "rv64ic/I-C-SUB-01", "3000",
    "rv64ic/I-C-SUBW-01", "3000",
    "rv64ic/I-C-SW-01", "3000",
    "rv64ic/I-C-SWSP-01", "3000",
    "rv64ic/I-C-XOR-01", "3000"
  };

  string imperas64iNOc[] = {
    `IMPERASTEST,
    "rv64i/I-MISALIGN_JMP-01","2000"
  };

  string imperas64i[] = '{
    `IMPERASTEST,
    //"rv64i/WALLY-PIPELINE-100K", "f7ff0",
    "rv64i/I-ADD-01", "3000",
    "rv64i/I-ADDI-01", "3000",
    "rv64i/I-ADDIW-01", "3000",
    "rv64i/I-ADDW-01", "3000",
    "rv64i/I-AND-01", "3000",
    "rv64i/I-ANDI-01", "3000",
    "rv64i/I-AUIPC-01", "3000",
    "rv64i/I-BEQ-01", "4000",
    "rv64i/I-BGE-01", "4000",
    "rv64i/I-BGEU-01", "4000",
    "rv64i/I-BLT-01", "4000",
    "rv64i/I-BLTU-01", "4000",
    "rv64i/I-BNE-01", "4000",
    "rv64i/I-DELAY_SLOTS-01", "2000",
    "rv64i/I-EBREAK-01", "2000",
    "rv64i/I-ECALL-01", "2000",
    "rv64i/I-ENDIANESS-01", "2010",
    "rv64i/I-IO-01", "2050",
    "rv64i/I-JAL-01", "3000",
    "rv64i/I-JALR-01", "4000",
    "rv64i/I-LB-01", "4020",
    "rv64i/I-LBU-01", "4020",
    "rv64i/I-LD-01", "4420",
    "rv64i/I-LH-01", "4050",
    "rv64i/I-LHU-01", "4050",
    "rv64i/I-LUI-01", "2000",
    "rv64i/I-LW-01", "4110",
    "rv64i/I-LWU-01", "4110", 
    "rv64i/I-MISALIGN_LDST-01", "2010",
    "rv64i/I-NOP-01", "2000",
    "rv64i/I-OR-01", "3000",
    "rv64i/I-ORI-01", "3000",
    "rv64i/I-RF_size-01", "2000",
    "rv64i/I-RF_width-01", "2000",
    "rv64i/I-RF_x0-01", "2010",
    "rv64i/I-SB-01", "4000",
    "rv64i/I-SD-01", "4000",
    "rv64i/I-SH-01", "4000",
    "rv64i/I-SLL-01", "3000",
    "rv64i/I-SLLI-01", "3000",
    "rv64i/I-SLLIW-01", "3000",
    "rv64i/I-SLLW-01", "3000",
    "rv64i/I-SLT-01", "3000",
    "rv64i/I-SLTI-01", "3000",
    "rv64i/I-SLTIU-01", "3000",
    "rv64i/I-SLTU-01", "3000",
    "rv64i/I-SRA-01", "3000",
    "rv64i/I-SRAI-01", "3000",
    "rv64i/I-SRAIW-01", "3000",
    "rv64i/I-SRAW-01", "3000",
    "rv64i/I-SRL-01", "3000",
    "rv64i/I-SRLI-01", "3000",
    "rv64i/I-SRLIW-01", "3000",
    "rv64i/I-SRLW-01", "3000",
    "rv64i/I-SUB-01", "3000",
    "rv64i/I-SUBW-01", "3000",
    "rv64i/I-SW-01", "4000",
    "rv64i/I-XOR-01", "3000",
    "rv64i/I-XORI-01", "3000",
    "rv64i/WALLY-ADD", "4000",
    "rv64i/WALLY-SUB", "4000",
    "rv64i/WALLY-ADDI", "3000",
    "rv64i/WALLY-ANDI", "3000",
    "rv64i/WALLY-ORI", "3000",
    "rv64i/WALLY-XORI", "3000",
    "rv64i/WALLY-SLTI", "3000",
    "rv64i/WALLY-SLTIU", "3000",
    "rv64i/WALLY-SLLI", "3000",
    "rv64i/WALLY-SRLI", "3000",
    "rv64i/WALLY-SRAI", "3000",
    "rv64i/WALLY-JAL", "4000",
    "rv64i/WALLY-JALR", "3000",
    "rv64i/WALLY-STORE", "3000",
    "rv64i/WALLY-ADDIW", "3000",
    "rv64i/WALLY-SLLIW", "3000",
    "rv64i/WALLY-SRLIW", "3000",
    "rv64i/WALLY-SRAIW", "3000",
    "rv64i/WALLY-ADDW", "4000",
    "rv64i/WALLY-SUBW", "4000",
    "rv64i/WALLY-SLLW", "3000",
    "rv64i/WALLY-SRLW", "3000",
    "rv64i/WALLY-SRAW", "3000",
    "rv64i/WALLY-BEQ" ,"5000",
    "rv64i/WALLY-BNE", "5000 ",
    "rv64i/WALLY-BLTU", "5000 ",
    "rv64i/WALLY-BLT", "5000",
    "rv64i/WALLY-BGE", "5000 ",
    "rv64i/WALLY-BGEU", "5000 ",
    "rv64i/WALLY-CSRRW", "4000",
    "rv64i/WALLY-CSRRS", "4000",
    "rv64i/WALLY-CSRRC", "5000",
    "rv64i/WALLY-CSRRWI", "4000",
    "rv64i/WALLY-CSRRSI", "4000",
    "rv64i/WALLY-CSRRCI", "4000"
  };

  string imperas32a[] = '{
    `IMPERASTEST,
    "rv32a/WALLY-AMO", "2110",
    "rv32a/WALLY-LRSC", "2110"
  };

  string imperas32m[] = '{
    `IMPERASTEST,
    "rv32m/I-DIVU-01", "2000",
    "rv32m/I-REMU-01", "2000",
    "rv32m/I-DIV-01", "2000",
    "rv32m/I-REM-01", "2000",
    "rv32m/I-MUL-01", "2000",
    "rv32m/I-MULH-01", "2000",
    "rv32m/I-MULHSU-01", "2000",
    "rv32m/I-MULHU-01", "2000"
  };

  string imperas32c[] = '{
    `IMPERASTEST,
    "rv32ic/I-C-ADD-01", "2000",
    "rv32ic/I-C-ADDI-01", "2000",
    "rv32ic/I-C-AND-01", "2000",
    "rv32ic/I-C-ANDI-01", "2000",
    "rv32ic/I-C-BEQZ-01", "2000",
    "rv32ic/I-C-BNEZ-01", "2000",
    "rv32ic/I-C-EBREAK-01", "2000",
    "rv32ic/I-C-J-01", "2000",
    "rv32ic/I-C-JALR-01", "3000",
    "rv32ic/I-C-JR-01", "3000",
    "rv32ic/I-C-LI-01", "2000",
    "rv32ic/I-C-LUI-01", "2000",
    "rv32ic/I-C-LW-01", "2110",
    "rv32ic/I-C-LWSP-01", "2110",
    "rv32ic/I-C-MV-01", "2000",
    "rv32ic/I-C-NOP-01", "2000",
    "rv32ic/I-C-OR-01", "2000",
    "rv32ic/I-C-SLLI-01", "2000",
    "rv32ic/I-C-SRAI-01", "2000",
    "rv32ic/I-C-SRLI-01", "2000",
    "rv32ic/I-C-SUB-01", "2000",
    "rv32ic/I-C-SW-01", "2000",
    "rv32ic/I-C-SWSP-01", "2000",
    "rv32ic/I-C-XOR-01", "2000"
  };

  string imperas32iNOc[] = {
    `IMPERASTEST,
    "rv32i/I-MISALIGN_JMP-01","2000"
  };

  string imperas32i[] = {
    `IMPERASTEST,
    //"rv32i/WALLY-PIPELINE-100K", "10a800",
    "rv32i/I-ADD-01", "2000",
    "rv32i/I-ADDI-01","2000",
    "rv32i/I-AND-01","2000",
    "rv32i/I-ANDI-01","2000",
    "rv32i/I-AUIPC-01","2000",
    "rv32i/I-BEQ-01","3000",
    "rv32i/I-BGE-01","3000",
    "rv32i/I-BGEU-01","3000",
    "rv32i/I-BLT-01","3000",
    "rv32i/I-BLTU-01","3000",
    "rv32i/I-BNE-01","3000",
    "rv32i/I-DELAY_SLOTS-01","2000",
    "rv32i/I-EBREAK-01","2000",
    "rv32i/I-ECALL-01","2000",
    "rv32i/I-ENDIANESS-01","2010",
    "rv32i/I-IO-01","2030rv",
    "rv32i/I-JAL-01","3000",
    "rv32i/I-JALR-01","3000",
    "rv32i/I-LB-01","3020",
    "rv32i/I-LBU-01","3020",
    "rv32i/I-LH-01","3050",
    "rv32i/I-LHU-01","3050",
    "rv32i/I-LUI-01","2000",
    "rv32i/I-LW-01","3110",
    "rv32i/I-MISALIGN_LDST-01","2010",
    "rv32i/I-NOP-01","2000",
    "rv32i/I-OR-01","2000",
    "rv32i/I-ORI-01","2000",
    "rv32i/I-RF_size-01","2000",
    "rv32i/I-RF_width-01","2000",
    "rv32i/I-RF_x0-01","2010",
    "rv32i/I-SB-01","3000",
    "rv32i/I-SH-01","3000",
    "rv32i/I-SLL-01","2000",
    "rv32i/I-SLLI-01","2000",
    "rv32i/I-SLT-01","2000",
    "rv32i/I-SLTI-01","2000",
    "rv32i/I-SLTIU-01","2000",
    "rv32i/I-SLTU-01","2000",
    "rv32i/I-SRA-01","2000",
    "rv32i/I-SRAI-01","2000",
    "rv32i/I-SRL-01","2000",
    "rv32i/I-SRLI-01","2000",
    "rv32i/I-SUB-01","2000",
    "rv32i/I-SW-01","3000",
    "rv32i/I-XOR-01","2000",
    "rv32i/I-XORI-01","2000",
    "rv32i/WALLY-ADD", "3000",
    "rv32i/WALLY-SUB", "3000",
    "rv32i/WALLY-ADDI", "2000",
    "rv32i/WALLY-ANDI", "2000",
    "rv32i/WALLY-ORI", "2000",
    "rv32i/WALLY-XORI", "2000",
    "rv32i/WALLY-SLTI", "2000",
    "rv32i/WALLY-SLTIU", "2000",
    "rv32i/WALLY-SLLI", "2000",
    "rv32i/WALLY-SRLI", "2000",
    "rv32i/WALLY-SRAI", "2000",
    "rv32i/WALLY-LOAD", "11c00",
    "rv32i/WALLY-SUB", "3000",
    "rv32i/WALLY-STORE", "2000",
    "rv32i/WALLY-JAL", "3000",
    "rv32i/WALLY-JALR", "2000",
    "rv32i/WALLY-BEQ" ,"4000",
    "rv32i/WALLY-BNE", "4000 ",
    "rv32i/WALLY-BLTU", "4000 ",
    "rv32i/WALLY-BLT", "4000",
    "rv32i/WALLY-BGE", "4000 ",
    "rv32i/WALLY-BGEU", "4000 ",
    "rv32i/WALLY-CSRRW", "3000",
    "rv32i/WALLY-CSRRS", "3000",
    "rv32i/WALLY-CSRRC", "4000",
    "rv32i/WALLY-CSRRWI", "3000",
    "rv32i/WALLY-CSRRSI", "3000",
    "rv32i/WALLY-CSRRCI", "3000"
  };

  string testsBP64[] = '{
    `IMPERASTEST,
    "rv64BP/simple", "10000",
    "rv64BP/mmm", "1000000",
    "rv64BP/linpack_bench", "1000000",
    "rv64BP/sieve", "1000000",
    "rv64BP/qsort", "1000000",
    "rv64BP/dhrystone", "1000000"
  };

  string imperas64p[] = '{
    `IMPERASTEST,
    "rv64p/WALLY-MSTATUS", "2000",
    "rv64p/WALLY-MCAUSE", "3000",
    "rv64p/WALLY-SCAUSE", "2000",
    "rv64p/WALLY-MEPC", "5000",
    "rv64p/WALLY-SEPC", "4000",
    "rv64p/WALLY-MTVAL", "6000",
    "rv64p/WALLY-STVAL", "4000",
    "rv64p/WALLY-MTVEC", "2000",
    "rv64p/WALLY-STVEC", "2000",
    "rv64p/WALLY-MARCHID", "4000",
    "rv64p/WALLY-MIMPID", "4000",
    "rv64p/WALLY-MHARTID", "4000",
    "rv64p/WALLY-MVENDORID", "4000",
    "rv64p/WALLY-MIE", "3000",
    "rv64p/WALLY-MEDELEG", "4000",
    "rv64p/WALLY-IP", "2000",
    "rv64p/WALLY-CSR-PERMISSIONS-M", "5000",
    "rv64p/WALLY-CSR-PERMISSIONS-S", "3000"
  };

  string imperas32p[] = '{
    `IMPERASTEST,
    "rv32p/WALLY-MSTATUS", "2000",
    "rv32p/WALLY-MCAUSE", "3000",
    "rv32p/WALLY-SCAUSE", "2000",
    "rv32p/WALLY-MEPC", "5000",
    "rv32p/WALLY-SEPC", "4000",
    "rv32p/WALLY-MTVAL", "5000",
    "rv32p/WALLY-STVAL", "4000",
    "rv32p/WALLY-MARCHID", "4000",
    "rv32p/WALLY-MIMPID", "4000",
    "rv32p/WALLY-MHARTID", "4000",
    "rv32p/WALLY-MVENDORID", "4000",
    "rv32p/WALLY-MTVEC", "2000",
    "rv32p/WALLY-STVEC", "2000",
    "rv32p/WALLY-MIE", "3000",
    "rv32p/WALLY-MEDELEG", "4000",
    "rv32p/WALLY-IP", "3000",
    "rv32p/WALLY-CSR-PERMISSIONS-M", "5000",
    "rv32p/WALLY-CSR-PERMISSIONS-S", "3000"
  };

  string imperas64periph[] = '{
    `IMPERASTEST,
    "rv64i-periph/WALLY-PERIPH", "2000"
  };

  string imperas32periph[] = '{
    `IMPERASTEST,
    "rv32i-periph/WALLY-PLIC", "2080"
  };


  string arch64priv[] = '{
    `RISCVARCHTEST,
    "rv64i_m/privilege/ebreak", "2090",
    "rv64i_m/privilege/ecall", "2090",
    "rv64i_m/privilege/misalign-beq-01", "20a0",
    "rv64i_m/privilege/misalign-bge-01", "20a0",
    "rv64i_m/privilege/misalign-bgeu-01", "20a0",
    "rv64i_m/privilege/misalign-blt-01", "20a0",
    "rv64i_m/privilege/misalign-bltu-01", "20a0",
    "rv64i_m/privilege/misalign-bne-01", "20a0",
    "rv64i_m/privilege/misalign-jal-01", "20a0",
    "rv64i_m/privilege/misalign-ld-01", "20a0",
    "rv64i_m/privilege/misalign-lh-01", "20a0",
    "rv64i_m/privilege/misalign-lhu-01", "20a0",
    "rv64i_m/privilege/misalign-lw-01", "20a0",
    "rv64i_m/privilege/misalign-lwu-01", "20a0",
    "rv64i_m/privilege/misalign-sd-01", "20a0",
    "rv64i_m/privilege/misalign-sh-01", "20a0",
    "rv64i_m/privilege/misalign-sw-01", "20a0",
    "rv64i_m/privilege/misalign1-jalr-01", "20a0",
    "rv64i_m/privilege/misalign2-jalr-01", "20a0"
    };

  string arch64m[] = '{
    `RISCVARCHTEST,
    "rv64i_m/M/div-01", "9010",
    "rv64i_m/M/divu-01", "a010",
    "rv64i_m/M/divuw-01", "a010",
    "rv64i_m/M/divw-01", "9010",
    "rv64i_m/M/mul-01", "9010",
    "rv64i_m/M/mulh-01", "9010",
    "rv64i_m/M/mulhsu-01", "9010",
    "rv64i_m/M/mulhu-01", "a010",
    "rv64i_m/M/mulw-01", "9010",
    "rv64i_m/M/rem-01", "9010",
    "rv64i_m/M/remu-01", "a010",
    "rv64i_m/M/remuw-01", "a010",
    "rv64i_m/M/remw-01", "9010"
   };

  string arch64c[] = '{
    `RISCVARCHTEST,
    "rv64i_m/C/cadd-01", "8010",
    "rv64i_m/C/caddi-01", "4010",
    "rv64i_m/C/caddi16sp-01", "2010",
    "rv64i_m/C/caddi4spn-01", "2010",
    "rv64i_m/C/caddiw-01", "4010",
    "rv64i_m/C/caddw-01", "8010",
    "rv64i_m/C/cand-01", "8010",
    "rv64i_m/C/candi-01", "4010",
    "rv64i_m/C/cbeqz-01", "4010",
    "rv64i_m/C/cbnez-01", "5010",
    "rv64i_m/C/cebreak-01", "2070",
    "rv64i_m/C/cj-01", "3010",
    "rv64i_m/C/cjalr-01", "2010",
    "rv64i_m/C/cjr-01", "2010",
    "rv64i_m/C/cld-01", "2010",
    "rv64i_m/C/cldsp-01", "2010",
    "rv64i_m/C/cli-01", "2010",
    "rv64i_m/C/clui-01", "2010",
    "rv64i_m/C/clw-01", "2010",
    "rv64i_m/C/clwsp-01", "2010",
    "rv64i_m/C/cmv-01", "2010",
    "rv64i_m/C/cnop-01", "2010",
    "rv64i_m/C/cor-01", "8010",
    "rv64i_m/C/csd-01", "3010",
    "rv64i_m/C/csdsp-01", "3010",
    "rv64i_m/C/cslli-01", "2010",
    "rv64i_m/C/csrai-01", "2010",
    "rv64i_m/C/csrli-01", "2010",
    "rv64i_m/C/csub-01", "8010",
    "rv64i_m/C/csubw-01", "8010",
    "rv64i_m/C/csw-01", "3010",
    "rv64i_m/C/cswsp-01", "3010",
    "rv64i_m/C/cxor-01", "8010"
  };

  string arch64i[] = '{
    `RISCVARCHTEST,
    "rv64i_m/I/add-01", "9010",
    "rv64i_m/I/addi-01", "6010",
    "rv64i_m/I/addiw-01", "6010",
    "rv64i_m/I/addw-01", "9010",
    "rv64i_m/I/and-01", "9010",
    "rv64i_m/I/andi-01", "6010",
    "rv64i_m/I/auipc-01", "2010",
    "rv64i_m/I/beq-01", "47010",
    "rv64i_m/I/bge-01", "47010",
    "rv64i_m/I/bgeu-01", "56010",
    "rv64i_m/I/blt-01", "4d010",
    "rv64i_m/I/bltu-01", "57010",
    "rv64i_m/I/bne-01", "43010",
    "rv64i_m/I/fence-01", "2010",
    "rv64i_m/I/jal-01", "122010",
    "rv64i_m/I/jalr-01", "2010",
    "rv64i_m/I/lb-align-01", "2010",
    "rv64i_m/I/lbu-align-01", "2010",
    "rv64i_m/I/ld-align-01", "2010",
    "rv64i_m/I/lh-align-01", "2010",
    "rv64i_m/I/lhu-align-01", "2010",
    "rv64i_m/I/lui-01", "2010",
    "rv64i_m/I/lw-align-01", "2010",
    "rv64i_m/I/lwu-align-01", "2010",
    "rv64i_m/I/or-01", "9010",
    "rv64i_m/I/ori-01", "6010",
    "rv64i_m/I/sb-align-01", "3010",
    "rv64i_m/I/sd-align-01", "3010",
    "rv64i_m/I/sh-align-01", "3010",
    "rv64i_m/I/sll-01", "3010",
    "rv64i_m/I/slli-01", "2010",
    "rv64i_m/I/slliw-01", "2010",
    "rv64i_m/I/sllw-01", "3010",
    "rv64i_m/I/slt-01", "9010",
    "rv64i_m/I/slti-01", "6010",
    "rv64i_m/I/sltiu-01", "6010",
    "rv64i_m/I/sltu-01", "a010",
    "rv64i_m/I/sra-01", "3010",
    "rv64i_m/I/srai-01", "2010",
    "rv64i_m/I/sraiw-01", "2010",
    "rv64i_m/I/sraw-01", "3010",
    "rv64i_m/I/srl-01", "3010",
    "rv64i_m/I/srli-01", "2010",
    "rv64i_m/I/srliw-01", "2010",
    "rv64i_m/I/srlw-01", "3010",
    "rv64i_m/I/sub-01", "9010",
    "rv64i_m/I/subw-01", "9010",
    "rv64i_m/I/sw-align-01", "3010",
    "rv64i_m/I/xor-01", "9010",
    "rv64i_m/I/xori-01", "6010"
  };


  string arch64d[] = '{
    `RISCVARCHTEST,
    "rv64i_m/D/d_fadd_b10-01", "8690",
//    "rv64i_m/D/d_fadd_b1-01", "8430",
//    "rv64i_m/D/d_fadd_b11-01", "74da0",
//    "rv64i_m/D/d_fadd_b12-01", "2350",
//    "rv64i_m/D/d_fadd_b13-01", "3cb0",
//    "rv64i_m/D/d_fadd_b2-01", "5160",
//    "rv64i_m/D/d_fadd_b3-01", "d640",
//    "rv64i_m/D/d_fadd_b4-01", "3900",
//    "rv64i_m/D/d_fadd_b5-01", "3d50",
//    "rv64i_m/D/d_fadd_b7-01", "5530",
//    "rv64i_m/D/d_fadd_b8-01", "11c10",
    "rv64i_m/D/d_fclass_b1-01", "2110",
    // "rv64i_m/D/d_fcvt.d.l_b25-01", "2110",
    // "rv64i_m/D/d_fcvt.d.l_b26-01", "2220",
    // "rv64i_m/D/d_fcvt.d.lu_b25-01", "2110",
    // "rv64i_m/D/d_fcvt.d.lu_b26-01", "2220",
    // "rv64i_m/D/d_fcvt.d.s_b1-01", "2110",
    // "rv64i_m/D/d_fcvt.d.s_b22-01", "2110",
    // "rv64i_m/D/d_fcvt.d.s_b23-01", "2110",
    // "rv64i_m/D/d_fcvt.d.s_b24-01", "2110",
    // "rv64i_m/D/d_fcvt.d.s_b27-01", "2110",
    // "rv64i_m/D/d_fcvt.d.s_b28-01", "2110",
    // "rv64i_m/D/d_fcvt.d.s_b29-01", "2110",
    // "rv64i_m/D/d_fcvt.d.w_b25-01", "2120",
    // "rv64i_m/D/d_fcvt.d.w_b26-01", "2220",
    // "rv64i_m/D/d_fcvt.d.wu_b25-01", "2110",
    // "rv64i_m/D/d_fcvt.d.wu_b26-01", "2220",
    // "rv64i_m/D/d_fcvt.l.d_b1-01", "2120",
    // "rv64i_m/D/d_fcvt.l.d_b22-01", "2260",
    // "rv64i_m/D/d_fcvt.l.d_b23-01", "2180",
    // "rv64i_m/D/d_fcvt.l.d_b24-01", "2360",
    // "rv64i_m/D/d_fcvt.l.d_b27-01", "2110",
    // "rv64i_m/D/d_fcvt.l.d_b28-01", "2120",
    // "rv64i_m/D/d_fcvt.l.d_b29-01", "22a0",
    // "rv64i_m/D/d_fcvt.lu.d_b1-01", "2120",
    // "rv64i_m/D/d_fcvt.lu.d_b22-01", "2260",
    // "rv64i_m/D/d_fcvt.lu.d_b23-01", "2180",
    // "rv64i_m/D/d_fcvt.lu.d_b24-01", "2360",
    // "rv64i_m/D/d_fcvt.lu.d_b27-01", "2120",
    // "rv64i_m/D/d_fcvt.lu.d_b28-01", "2120",
    // "rv64i_m/D/d_fcvt.lu.d_b29-01", "22a0",
    // "rv64i_m/D/d_fcvt.s.d_b1-01", "2110",
    // "rv64i_m/D/d_fcvt.s.d_b22-01", "2110",
    // "rv64i_m/D/d_fcvt.s.d_b23-01", "2180",
    // "rv64i_m/D/d_fcvt.s.d_b24-01", "2360",
    // "rv64i_m/D/d_fcvt.s.d_b27-01", "2110",
    // "rv64i_m/D/d_fcvt.s.d_b28-01", "2110",
    // "rv64i_m/D/d_fcvt.s.d_b29-01", "22a0",
    // "rv64i_m/D/d_fcvt.w.d_b1-01", "2120",
    // "rv64i_m/D/d_fcvt.w.d_b22-01", "2160",
    // "rv64i_m/D/d_fcvt.w.d_b23-01", "2180",
    // "rv64i_m/D/d_fcvt.w.d_b24-01", "2360",
    // "rv64i_m/D/d_fcvt.w.d_b27-01", "2120",
    // "rv64i_m/D/d_fcvt.w.d_b28-01", "2120",
    // "rv64i_m/D/d_fcvt.w.d_b29-01", "22a0",
    // "rv64i_m/D/d_fcvt.wu.d_b1-01", "2120",
    // "rv64i_m/D/d_fcvt.wu.d_b22-01", "2160",
    // "rv64i_m/D/d_fcvt.wu.d_b23-01", "2180",
    // "rv64i_m/D/d_fcvt.wu.d_b24-01", "2360",
    // "rv64i_m/D/d_fcvt.wu.d_b27-01", "2120",
    // "rv64i_m/D/d_fcvt.wu.d_b28-01", "2120",
    // "rv64i_m/D/d_fcvt.wu.d_b29-01", "22a0",
    // "rv64i_m/D/d_fdiv_b1-01", "8430",
    // "rv64i_m/D/d_fdiv_b20-01", "3fa0",
    // "rv64i_m/D/d_fdiv_b2-01", "5170",
    // "rv64i_m/D/d_fdiv_b21-01", "8a70",
    // "rv64i_m/D/d_fdiv_b3-01", "d630",
    // "rv64i_m/D/d_fdiv_b4-01", "38f0",
    // "rv64i_m/D/d_fdiv_b5-01", "3d50",
    // "rv64i_m/D/d_fdiv_b6-01", "38f0",
    // "rv64i_m/D/d_fdiv_b7-01", "5530",
    // "rv64i_m/D/d_fdiv_b8-01", "11c10",
    // "rv64i_m/D/d_fdiv_b9-01", "1b0f0",
    // "rv64i_m/D/d_feq_b1-01", "7430",
    // "rv64i_m/D/d_feq_b19-01", "c4c0",
    // "rv64i_m/D/d_fld-align-01", "2010",
    // "rv64i_m/D/d_fle_b1-01", "7430",
    // "rv64i_m/D/d_fle_b19-01", "c4c0",
    // "rv64i_m/D/d_flt_b1-01", "7430",
    // "rv64i_m/D/d_flt_b19-01", "d800",
    "rv64i_m/D/d_fmadd_b14-01", "3fd0",
    "rv64i_m/D/d_fmadd_b16-01", "43b0",
    "rv64i_m/D/d_fmadd_b17-01", "43b0",
    "rv64i_m/D/d_fmadd_b18-01", "5a20",
    "rv64i_m/D/d_fmadd_b2-01", "5ab0",
    "rv64i_m/D/d_fmadd_b3-01", "119d0",
    "rv64i_m/D/d_fmadd_b4-01", "3df0",
    "rv64i_m/D/d_fmadd_b5-01", "4480",
    "rv64i_m/D/d_fmadd_b6-01", "3df0",
    "rv64i_m/D/d_fmadd_b7-01", "6050",
    "rv64i_m/D/d_fmadd_b8-01", "15aa0",
    "rv64i_m/D/d_fmax_b1-01", "8430",
    "rv64i_m/D/d_fmax_b19-01", "d5c0",
    "rv64i_m/D/d_fmin_b1-01", "8430",
    "rv64i_m/D/d_fmin_b19-01", "d4b0",
    "rv64i_m/D/d_fmsub_b14-01", "3fd0",
    "rv64i_m/D/d_fmsub_b16-01", "43b0",
    "rv64i_m/D/d_fmsub_b17-01", "43b0",
    "rv64i_m/D/d_fmsub_b18-01", "5a20",
    "rv64i_m/D/d_fmsub_b2-01", "5ab0",
    "rv64i_m/D/d_fmsub_b3-01", "119f0",
    "rv64i_m/D/d_fmsub_b4-01", "3df0",
    "rv64i_m/D/d_fmsub_b5-01", "4480",
    "rv64i_m/D/d_fmsub_b6-01", "3df0",
    "rv64i_m/D/d_fmsub_b7-01", "6050",
    "rv64i_m/D/d_fmsub_b8-01", "15aa0",
    "rv64i_m/D/d_fmul_b1-01", "8430",
    "rv64i_m/D/d_fmul_b2-01", "5180",
    "rv64i_m/D/d_fmul_b3-01", "d640",
    "rv64i_m/D/d_fmul_b4-01", "38f0",
    "rv64i_m/D/d_fmul_b5-01", "3d50",
    "rv64i_m/D/d_fmul_b6-01", "38f0",
    "rv64i_m/D/d_fmul_b7-01", "5540",
    "rv64i_m/D/d_fmul_b8-01", "11c10",
    "rv64i_m/D/d_fmul_b9-01", "1b0f0",
    "rv64i_m/D/d_fmv.d.x_b25-01", "2110",
    "rv64i_m/D/d_fmv.d.x_b26-01", "2220",
    "rv64i_m/D/d_fmv.x.d_b1-01", "2120",
    "rv64i_m/D/d_fmv.x.d_b22-01", "2110",
    "rv64i_m/D/d_fmv.x.d_b23-01", "2110",
    "rv64i_m/D/d_fmv.x.d_b24-01", "2120",
    "rv64i_m/D/d_fmv.x.d_b27-01", "2120",
    "rv64i_m/D/d_fmv.x.d_b28-01", "2110",
    "rv64i_m/D/d_fmv.x.d_b29-01", "2120",
    "rv64i_m/D/d_fnmadd_b14-01", "3fd0",
    "rv64i_m/D/d_fnmadd_b16-01", "4390",
    "rv64i_m/D/d_fnmadd_b17-01", "4390",
    "rv64i_m/D/d_fnmadd_b18-01", "5a20",
    "rv64i_m/D/d_fnmadd_b2-01", "5ab0",
    "rv64i_m/D/d_fnmadd_b3-01", "119d0",
    "rv64i_m/D/d_fnmadd_b4-01", "3df0",
    "rv64i_m/D/d_fnmadd_b5-01", "4480",
    "rv64i_m/D/d_fnmadd_b6-01", "3df0",
    "rv64i_m/D/d_fnmadd_b7-01", "6050",
    "rv64i_m/D/d_fnmadd_b8-01", "15aa0",
    "rv64i_m/D/d_fnmsub_b14-01", "3fd0",
    "rv64i_m/D/d_fnmsub_b16-01", "4390",
    "rv64i_m/D/d_fnmsub_b17-01", "4390",
    "rv64i_m/D/d_fnmsub_b18-01", "5a20",
    "rv64i_m/D/d_fnmsub_b2-01", "5aa0",
    "rv64i_m/D/d_fnmsub_b3-01", "119d0",
    "rv64i_m/D/d_fnmsub_b4-01", "3e20",
    "rv64i_m/D/d_fnmsub_b5-01", "4480",
    "rv64i_m/D/d_fnmsub_b6-01", "3e10",
    "rv64i_m/D/d_fnmsub_b7-01", "6050",
    "rv64i_m/D/d_fnmsub_b8-01", "15aa0",
    "rv64i_m/D/d_fsd-align-01", "2010",
    "rv64i_m/D/d_fsgnj_b1-01", "8430",
    "rv64i_m/D/d_fsgnjn_b1-01", "8430",
    "rv64i_m/D/d_fsgnjx_b1-01", "8430",
    "rv64i_m/D/d_fsqrt_b1-01", "2110",
    "rv64i_m/D/d_fsqrt_b20-01", "3460",
    "rv64i_m/D/d_fsqrt_b2-01", "2190",
    "rv64i_m/D/d_fsqrt_b3-01", "2120",
    "rv64i_m/D/d_fsqrt_b4-01", "2110",
    "rv64i_m/D/d_fsqrt_b5-01", "2110",
    "rv64i_m/D/d_fsqrt_b7-01", "2110",
    "rv64i_m/D/d_fsqrt_b8-01", "2110",
    "rv64i_m/D/d_fsqrt_b9-01", "4c10",
    "rv64i_m/D/d_fsub_b10-01", "8660",
    "rv64i_m/D/d_fsub_b1-01", "8440",
    "rv64i_m/D/d_fsub_b11-01", "74da0",
    "rv64i_m/D/d_fsub_b12-01", "2350",
    "rv64i_m/D/d_fsub_b13-01", "3cb0",
    "rv64i_m/D/d_fsub_b2-01", "5160",
    "rv64i_m/D/d_fsub_b3-01", "d630",
    "rv64i_m/D/d_fsub_b4-01", "38f0",
    "rv64i_m/D/d_fsub_b5-01", "3d50",
    "rv64i_m/D/d_fsub_b7-01", "5530",
    "rv64i_m/D/d_fsub_b8-01", "11c10"
  };

    string arch32priv[] = '{
    `RISCVARCHTEST,
    "rv32i_m/privilege/ebreak", "2070",
    "rv32i_m/privilege/ecall", "2070",
    "rv32i_m/privilege/misalign-beq-01", "2080",
    "rv32i_m/privilege/misalign-bge-01", "2080",
    "rv32i_m/privilege/misalign-bgeu-01", "2080",
    "rv32i_m/privilege/misalign-blt-01", "2080",
    "rv32i_m/privilege/misalign-bltu-01", "2080",
    "rv32i_m/privilege/misalign-bne-01", "2080",
    "rv32i_m/privilege/misalign-jal-01", "2080",
    "rv32i_m/privilege/misalign-lh-01", "2080",
    "rv32i_m/privilege/misalign-lhu-01", "2080",
    "rv32i_m/privilege/misalign-lw-01", "2080",
    "rv32i_m/privilege/misalign-sh-01", "2080",
    "rv32i_m/privilege/misalign-sw-01", "2080",
    "rv32i_m/privilege/misalign1-jalr-01", "2080",
    "rv32i_m/privilege/misalign2-jalr-01", "2080"
    };

  string arch32m[] = '{
    `RISCVARCHTEST,
    "rv32i_m/M/div-01", "5010",
    "rv32i_m/M/divu-01", "5010",
    "rv32i_m/M/mul-01", "5010",
    "rv32i_m/M/mulh-01", "5010",
    "rv32i_m/M/mulhsu-01", "5010",
    "rv32i_m/M/mulhu-01", "5010",
    "rv32i_m/M/rem-01", "5010",
    "rv32i_m/M/remu-01", "5010"
   };

  string arch32f[] = '{
    `RISCVARCHTEST,
    // "rv32i_m/F/fadd_b1-01", "7220",
    // "rv32i_m/F/fadd_b10-01", "2270", 
    // "rv32i_m/F/fadd_b11-01", "3fb40",
    // "rv32i_m/F/fadd_b12-01", "21b0",
    // "rv32i_m/F/fadd_b13-01", "3660",
    // "rv32i_m/F/fadd_b2-01", "38b0",
    // "rv32i_m/F/fadd_b3-01", "b320",
    // "rv32i_m/F/fadd_b4-01", "3480",
    // "rv32i_m/F/fadd_b5-01", "3700",
    // "rv32i_m/F/fadd_b7-01", "3520",
    // "rv32i_m/F/fadd_b8-01", "104a0",
    "rv32i_m/F/fclass_b1-01", "2090",
    "rv32i_m/F/fcvt.s.w_b25-01", "20a0",
    "rv32i_m/F/fcvt.s.w_b26-01", "3290",
    "rv32i_m/F/fcvt.s.wu_b25-01", "20a0",
    "rv32i_m/F/fcvt.s.wu_b26-01", "3290",
//    "rv32i_m/F/fcvt.w.s_b1-01", "2090",
//    "rv32i_m/F/fcvt.w.s_b22-01", "20b0",
    // "rv32i_m/F/fcvt.w.s_b23-01", "20c0",
    // "rv32i_m/F/fcvt.w.s_b24-01", "21b0",
    // "rv32i_m/F/fcvt.w.s_b27-01", "2090",
    // "rv32i_m/F/fcvt.w.s_b28-01", "2090",
    // "rv32i_m/F/fcvt.w.s_b29-01", "2150",
    // "rv32i_m/F/fcvt.wu.s_b1-01", "2090",
    // "rv32i_m/F/fcvt.wu.s_b22-01", "20b0",
    // "rv32i_m/F/fcvt.wu.s_b23-01", "20c0",
    // "rv32i_m/F/fcvt.wu.s_b24-01", "21b0",
    // "rv32i_m/F/fcvt.wu.s_b27-01", "2090",
    // "rv32i_m/F/fcvt.wu.s_b28-01", "2090",
    // "rv32i_m/F/fcvt.wu.s_b29-01", "2150",
    // "rv32i_m/F/fdiv_b1-01", "7220",
    // "rv32i_m/F/fdiv_b2-01", "2350",
    // "rv32i_m/F/fdiv_b20-01", "38c0",
    // "rv32i_m/F/fdiv_b21-01", "7540",
    // "rv32i_m/F/fdiv_b3-01", "b320",
    // "rv32i_m/F/fdiv_b4-01", "3480",
    // "rv32i_m/F/fdiv_b5-01", "3700",
    // "rv32i_m/F/fdiv_b6-01", "3480",
    // "rv32i_m/F/fdiv_b7-01", "3520",
    // "rv32i_m/F/fdiv_b8-01", "104a0",
    // "rv32i_m/F/fdiv_b9-01", "d960",
    // "rv32i_m/F/feq_b1-01", "6220",
    // "rv32i_m/F/feq_b19-01", "a190",
    // "rv32i_m/F/fle_b1-01", "6220",
    // "rv32i_m/F/fle_b19-01", "a190",
    // "rv32i_m/F/flt_b1-01", "6220",
    // "rv32i_m/F/flt_b19-01", "8ee0",
    "rv32i_m/F/flw-align-01", "2010",
//    "rv32i_m/F/fmadd_b1-01", "96860",
    "rv32i_m/F/fmadd_b14-01", "23d0",
//--passes but is timeconsuming    "rv32i_m/F/fmadd_b15-01", "19bb30",
    "rv32i_m/F/fmadd_b16-01", "39d0",
    "rv32i_m/F/fmadd_b17-01", "39d0",
//    "rv32i_m/F/fmadd_b18-01", "4d10",
    "rv32i_m/F/fmadd_b2-01", "4d60",
    "rv32i_m/F/fmadd_b3-01", "d4f0",
    "rv32i_m/F/fmadd_b4-01", "3700",
    "rv32i_m/F/fmadd_b5-01", "3ac0",
    "rv32i_m/F/fmadd_b6-01", "3700",
//    "rv32i_m/F/fmadd_b7-01", "d7f0",
//    "rv32i_m/F/fmadd_b8-01", "13f30",
    // "rv32i_m/F/fmax_b1-01", "7220",
    // "rv32i_m/F/fmax_b19-01", "9e00",
    // "rv32i_m/F/fmin_b1-01", "7220",
    // "rv32i_m/F/fmin_b19-01", "9f20",
    "rv32i_m/F/fmsub_b1-01", "96860",
    "rv32i_m/F/fmsub_b14-01", "23d0",
//    "rv32i_m/F/fmsub_b15-01", "19bb30",
    "rv32i_m/F/fmsub_b16-01", "39d0",
    "rv32i_m/F/fmsub_b17-01", "39d0",
    "rv32i_m/F/fmsub_b18-01", "42d0",
    "rv32i_m/F/fmsub_b2-01", "4d60",
    "rv32i_m/F/fmsub_b3-01", "d4f0",
    "rv32i_m/F/fmsub_b4-01", "3700",
    "rv32i_m/F/fmsub_b5-01", "3ac0",
    "rv32i_m/F/fmsub_b6-01", "3700",
    "rv32i_m/F/fmsub_b7-01", "37f0",
    "rv32i_m/F/fmsub_b8-01", "13f30",
    "rv32i_m/F/fmul_b1-01", "7220",
    "rv32i_m/F/fmul_b2-01", "38c0",
    "rv32i_m/F/fmul_b3-01", "b320",
    "rv32i_m/F/fmul_b4-01", "3480",
    "rv32i_m/F/fmul_b5-01", "3700",
    "rv32i_m/F/fmul_b6-01", "3480",
    "rv32i_m/F/fmul_b7-01", "3520",
    "rv32i_m/F/fmul_b8-01", "104a0",
    "rv32i_m/F/fmul_b9-01", "d960",
    "rv32i_m/F/fmv.w.x_b25-01", "2090",
    "rv32i_m/F/fmv.w.x_b26-01", "2090",
    "rv32i_m/F/fmv.x.w_b1-01", "2090",
    "rv32i_m/F/fmv.x.w_b22-01", "2090",
    "rv32i_m/F/fmv.x.w_b23-01", "2090",
    "rv32i_m/F/fmv.x.w_b24-01", "2090",
    "rv32i_m/F/fmv.x.w_b27-01", "2090",
    "rv32i_m/F/fmv.x.w_b28-01", "2090",
    "rv32i_m/F/fmv.x.w_b29-01", "2090",
    "rv32i_m/F/fnmadd_b1-01", "96870",
    "rv32i_m/F/fnmadd_b14-01", "23d0",
// timeconsuming    "rv32i_m/F/fnmadd_b15-01", "19bb40",
    "rv32i_m/F/fnmadd_b16-01", "39d0",
    "rv32i_m/F/fnmadd_b17-01", "39d0",
    "rv32i_m/F/fnmadd_b18-01", "4d10",
    "rv32i_m/F/fnmadd_b2-01", "4d60",
    "rv32i_m/F/fnmadd_b3-01", "d4f0",
    "rv32i_m/F/fnmadd_b4-01", "3700",
    "rv32i_m/F/fnmadd_b5-01", "3ac0",
    "rv32i_m/F/fnmadd_b6-01", "3700",
    "rv32i_m/F/fnmadd_b7-01", "37f0",
    "rv32i_m/F/fnmadd_b8-01", "13f30",
    "rv32i_m/F/fnmsub_b1-01", "96870",
    "rv32i_m/F/fnmsub_b14-01", "23d0",
// timeconsuming    "rv32i_m/F/fnmsub_b15-01", "19bb30",
    "rv32i_m/F/fnmsub_b16-01", "39d0",
    "rv32i_m/F/fnmsub_b17-01", "39d0",
    "rv32i_m/F/fnmsub_b18-01", "4d10",
    "rv32i_m/F/fnmsub_b2-01", "4d60",
    "rv32i_m/F/fnmsub_b3-01", "4df0",
    "rv32i_m/F/fnmsub_b4-01", "3700",
    "rv32i_m/F/fnmsub_b5-01", "3ac0",
    "rv32i_m/F/fnmsub_b6-01", "3700",
    "rv32i_m/F/fnmsub_b7-01", "37f0",
    "rv32i_m/F/fnmsub_b8-01", "13f30",
    "rv32i_m/F/fsgnj_b1-01", "7220",
    "rv32i_m/F/fsgnjn_b1-01", "7220",
    "rv32i_m/F/fsgnjx_b1-01", "7220",
    "rv32i_m/F/fsqrt_b1-01", "2090",
    "rv32i_m/F/fsqrt_b2-01", "2090",
    "rv32i_m/F/fsqrt_b20-01", "2090",
    "rv32i_m/F/fsqrt_b3-01", "2090",
    "rv32i_m/F/fsqrt_b4-01", "2090",
    "rv32i_m/F/fsqrt_b5-01", "2090",
    "rv32i_m/F/fsqrt_b7-01", "2090",
    "rv32i_m/F/fsqrt_b8-01", "2090",
    "rv32i_m/F/fsqrt_b9-01", "3310",
    "rv32i_m/F/fsub_b1-01", "7220",
    "rv32i_m/F/fsub_b10-01", "2250",
    "rv32i_m/F/fsub_b11-01", "3fb40",
    "rv32i_m/F/fsub_b12-01", "21b0",
    "rv32i_m/F/fsub_b13-01", "3660",
    "rv32i_m/F/fsub_b2-01", "38b0",
    "rv32i_m/F/fsub_b3-01", "b320",
    "rv32i_m/F/fsub_b4-01", "3480",
    "rv32i_m/F/fsub_b5-01", "3700",
    "rv32i_m/F/fsub_b7-01", "3520",
    "rv32i_m/F/fsub_b8-01", "104a0",
    "rv32i_m/F/fsw-align-01", "2010"
};


  string arch32c[] = '{
    `RISCVARCHTEST,
    "rv32i_m/C/cadd-01", "4010",
    "rv32i_m/C/caddi-01", "3010",
    "rv32i_m/C/caddi16sp-01", "2010",
    "rv32i_m/C/caddi4spn-01", "2010",
    "rv32i_m/C/cand-01", "4010",
    "rv32i_m/C/candi-01", "3010",
    "rv32i_m/C/cbeqz-01", "3010",
    "rv32i_m/C/cbnez-01", "3010",
    "rv32i_m/C/cebreak-01", "2050",
    "rv32i_m/C/cj-01", "3010",
    "rv32i_m/C/cjal-01", "3010",
    "rv32i_m/C/cjalr-01", "2010",
    "rv32i_m/C/cjr-01", "2010",
    "rv32i_m/C/cli-01", "2010",
    "rv32i_m/C/clui-01", "2010",
    "rv32i_m/C/clw-01", "2010",
    "rv32i_m/C/clwsp-01", "2010",
    "rv32i_m/C/cmv-01", "2010",
    "rv32i_m/C/cnop-01", "2010",
    "rv32i_m/C/cor-01", "4010",
    "rv32i_m/C/cslli-01", "2010",
    "rv32i_m/C/csrai-01", "2010",
    "rv32i_m/C/csrli-01", "2010",
    "rv32i_m/C/csub-01", "4010",
    "rv32i_m/C/csw-01", "2010",
    "rv32i_m/C/cswsp-01", "2010",
    "rv32i_m/C/cxor-01", "4010"
  };

  string arch32i[] = '{
    `RISCVARCHTEST,
    "rv32i_m/I/add-01", "5010",
    "rv32i_m/I/addi-01", "4010",
    "rv32i_m/I/and-01", "5010",
    "rv32i_m/I/andi-01", "4010",
    "rv32i_m/I/auipc-01", "2010",
    "rv32i_m/I/beq-01", "39010",
    "rv32i_m/I/bge-01", "3a010",
    "rv32i_m/I/bgeu-01", "4a010",
    "rv32i_m/I/blt-01", "38010",
    "rv32i_m/I/bltu-01", "4b010",
    "rv32i_m/I/bne-01", "39010",
    "rv32i_m/I/fence-01", "2010",
    "rv32i_m/I/jal-01", "1ad010",
    "rv32i_m/I/jalr-01", "2010",
    "rv32i_m/I/lb-align-01", "2010",
    "rv32i_m/I/lbu-align-01", "2010",
    "rv32i_m/I/lh-align-01", "2010",
    "rv32i_m/I/lhu-align-01", "2010",
    "rv32i_m/I/lui-01", "2010",
    "rv32i_m/I/lw-align-01", "2010",
    "rv32i_m/I/or-01", "5010",
    "rv32i_m/I/ori-01", "4010",
    "rv32i_m/I/sb-align-01", "2010",
    "rv32i_m/I/sh-align-01", "2010",
    "rv32i_m/I/sll-01", "2010",
    "rv32i_m/I/slli-01", "2010",
    "rv32i_m/I/slt-01", "5010",
    "rv32i_m/I/slti-01", "4010",
    "rv32i_m/I/sltiu-01", "4010",
    "rv32i_m/I/sltu-01", "5010",
    "rv32i_m/I/sra-01", "2010",
    "rv32i_m/I/srai-01", "2010",
    "rv32i_m/I/srl-01", "2010",
    "rv32i_m/I/srli-01", "2010",
    "rv32i_m/I/sub-01", "5010",
    "rv32i_m/I/sw-align-01", "2010",
    "rv32i_m/I/xor-01", "5010",
    "rv32i_m/I/xori-01", "4010"
  };


