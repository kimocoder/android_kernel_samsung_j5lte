/* Generated by firmware/Makefile */
    .section .rodata
    .p2align 2
_fw_coreriver_tc360_j5_fw_bin:
    .incbin "firmware/coreriver/tc360_j5.fw"
_fw_end:
   .section .rodata.str,"aMS",%progbits,1
    .p2align 2
_fw_coreriver_tc360_j5_fw_name:
    .string "coreriver/tc360_j5.fw"
    .section .builtin_fw,"a",%progbits
    .p2align 2
    .long _fw_coreriver_tc360_j5_fw_name
    .long _fw_coreriver_tc360_j5_fw_bin
    .long _fw_end - _fw_coreriver_tc360_j5_fw_bin
