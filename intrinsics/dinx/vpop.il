// System.UInt32 Z0.dinx::vpop(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// uint vpop(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
// AggressiveInlining
uint vpop(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
{
    IL_0000: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.BitPop::get_v128K1()
    IL_0005: stloc.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.BitPop::get_v128K2()
    IL_000B: stloc.1
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.BitPop::get_v128K4()
    IL_0011: stloc.2
    IL_0012: ldarg.0
    IL_0013: ldarg.1
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0019: ldarg.2
    IL_001A: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001F: ldarg.0
    IL_0020: ldarg.1
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0026: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_002B: stloc.3
    IL_002C: ldarg.0
    IL_002D: ldarg.1
    IL_002E: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0033: ldarg.2
    IL_0034: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0039: stloc.s V_4
    IL_003B: ldloc.3
    IL_003C: ldloc.3
    IL_003D: ldc.i4.1
    IL_003E: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0043: ldloc.0
    IL_0044: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0049: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_004E: stloc.3
    IL_004F: ldloc.s V_4
    IL_0051: ldloc.s V_4
    IL_0053: ldc.i4.1
    IL_0054: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0059: ldloc.0
    IL_005A: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_005F: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0064: stloc.s V_4
    IL_0066: ldloc.3
    IL_0067: ldloc.1
    IL_0068: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_006D: ldloc.3
    IL_006E: ldc.i4.2
    IL_006F: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0074: ldloc.1
    IL_0075: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_007A: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_007F: stloc.3
    IL_0080: ldloc.s V_4
    IL_0082: ldloc.1
    IL_0083: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0088: ldloc.s V_4
    IL_008A: ldc.i4.2
    IL_008B: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0090: ldloc.1
    IL_0091: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0096: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_009B: stloc.s V_4
    IL_009D: ldloc.3
    IL_009E: ldloc.3
    IL_009F: ldc.i4.4
    IL_00A0: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_00A5: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00AA: ldloc.2
    IL_00AB: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00B0: stloc.3
    IL_00B1: ldloc.s V_4
    IL_00B3: ldloc.s V_4
    IL_00B5: ldc.i4.4
    IL_00B6: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_00BB: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00C0: ldloc.2
    IL_00C1: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00C6: stloc.s V_4
    IL_00C8: ldloc.3
    IL_00C9: ldloc.3
    IL_00CA: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00CF: ldloc.s V_4
    IL_00D1: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00D6: stloc.s V_4
    IL_00D8: call Z0.N128 zfunc::get_n128()
    IL_00DD: call Z0.Stacked/MemStack128 Z0.Stacks::alloc(Z0.N128)
    IL_00E2: stloc.s V_5
    IL_00E4: ldloc.s V_4
    IL_00E6: ldloca.s V_5
    IL_00E8: ldflda System.UInt64 Z0.Stacked/MemStack128::X0
    IL_00ED: ldc.i4.0
    IL_00EE: call System.Void Z0.ginx::vstore<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.UInt64&,System.Int32)
    IL_00F3: ldc.i4.0
    IL_00F4: conv.i8
    IL_00F5: stloc.s V_6
    IL_00F7: ldloc.s V_6
    IL_00F9: ldloc.s V_5
    IL_00FB: ldfld System.UInt64 Z0.Stacked/MemStack128::X0
    IL_0100: ldc.i8 72340172838076673
    IL_0109: mul
    IL_010A: ldc.i4.s 56
    IL_010C: shr.un
    IL_010D: add
    IL_010E: stloc.s V_6
    IL_0110: ldloc.s V_6
    IL_0112: ldloc.s V_5
    IL_0114: ldfld System.UInt64 Z0.Stacked/MemStack128::X1
    IL_0119: ldc.i8 72340172838076673
    IL_0122: mul
    IL_0123: ldc.i4.s 56
    IL_0125: shr.un
    IL_0126: add
    IL_0127: stloc.s V_6
    IL_0129: ldloc.s V_6
    IL_012B: conv.u4
    IL_012C: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.UInt32 Z0.dinx::vpop(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// uint vpop(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> z)
// AggressiveInlining
uint vpop(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> z)
{
    IL_0000: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.BitPop::get_K1()
    IL_0005: stloc.0
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.BitPop::get_K2()
    IL_000B: stloc.1
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.BitPop::get_K4()
    IL_0011: stloc.2
    IL_0012: ldarg.0
    IL_0013: ldarg.1
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0019: ldarg.2
    IL_001A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001F: ldarg.0
    IL_0020: ldarg.1
    IL_0021: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0026: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_002B: stloc.3
    IL_002C: ldarg.0
    IL_002D: ldarg.1
    IL_002E: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0033: ldarg.2
    IL_0034: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0039: stloc.s V_4
    IL_003B: ldloc.3
    IL_003C: ldloc.3
    IL_003D: ldc.i4.1
    IL_003E: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0043: ldloc.0
    IL_0044: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0049: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_004E: stloc.3
    IL_004F: ldloc.s V_4
    IL_0051: ldloc.s V_4
    IL_0053: ldc.i4.1
    IL_0054: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0059: ldloc.0
    IL_005A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_005F: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0064: stloc.s V_4
    IL_0066: ldloc.3
    IL_0067: ldloc.1
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_006D: ldloc.3
    IL_006E: ldc.i4.2
    IL_006F: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0074: ldloc.1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_007A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_007F: stloc.3
    IL_0080: ldloc.s V_4
    IL_0082: ldloc.1
    IL_0083: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0088: ldloc.s V_4
    IL_008A: ldc.i4.2
    IL_008B: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0090: ldloc.1
    IL_0091: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0096: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_009B: stloc.s V_4
    IL_009D: ldloc.3
    IL_009E: ldloc.3
    IL_009F: ldc.i4.4
    IL_00A0: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00AA: ldloc.2
    IL_00AB: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00B0: stloc.3
    IL_00B1: ldloc.s V_4
    IL_00B3: ldloc.s V_4
    IL_00B5: ldc.i4.4
    IL_00B6: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsrl(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_00BB: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00C0: ldloc.2
    IL_00C1: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00C6: stloc.s V_4
    IL_00C8: ldloc.3
    IL_00C9: ldloc.3
    IL_00CA: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00CF: ldloc.s V_4
    IL_00D1: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00D6: stloc.s V_4
    IL_00D8: call Z0.N256 zfunc::get_n256()
    IL_00DD: call Z0.Stacked/MemStack256 Z0.Stacks::alloc(Z0.N256)
    IL_00E2: stloc.s V_5
    IL_00E4: ldloca.s V_5
    IL_00E6: ldc.i4.0
    IL_00E7: conv.i8
    IL_00E8: call System.UInt64& Z0.Stacks::head<System.UInt64>(Z0.Stacked/MemStack256&,System.UInt64)
    IL_00ED: stloc.s V_6
    IL_00EF: ldloc.s V_4
    IL_00F1: ldloc.s V_6
    IL_00F3: call System.Void Z0.dinx::vstore(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.UInt64&)
    IL_00F8: ldc.i4.0
    IL_00F9: conv.i8
    IL_00FA: stloc.s V_7
    IL_00FC: ldloc.s V_7
    IL_00FE: ldloc.s V_6
    IL_0100: ldc.i4.0
    IL_0101: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_0106: ldind.i8
    IL_0107: ldc.i8 72340172838076673
    IL_0110: mul
    IL_0111: ldc.i4.s 56
    IL_0113: shr.un
    IL_0114: add
    IL_0115: stloc.s V_7
    IL_0117: ldloc.s V_7
    IL_0119: ldloc.s V_6
    IL_011B: ldc.i4.1
    IL_011C: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_0121: ldind.i8
    IL_0122: ldc.i8 72340172838076673
    IL_012B: mul
    IL_012C: ldc.i4.s 56
    IL_012E: shr.un
    IL_012F: add
    IL_0130: stloc.s V_7
    IL_0132: ldloc.s V_7
    IL_0134: ldloc.s V_6
    IL_0136: ldc.i4.2
    IL_0137: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_013C: ldind.i8
    IL_013D: ldc.i8 72340172838076673
    IL_0146: mul
    IL_0147: ldc.i4.s 56
    IL_0149: shr.un
    IL_014A: add
    IL_014B: stloc.s V_7
    IL_014D: ldloc.s V_7
    IL_014F: ldloc.s V_6
    IL_0151: ldc.i4.3
    IL_0152: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_0157: ldind.i8
    IL_0158: ldc.i8 72340172838076673
    IL_0161: mul
    IL_0162: ldc.i4.s 56
    IL_0164: shr.un
    IL_0165: add
    IL_0166: stloc.s V_7
    IL_0168: ldloc.s V_7
    IL_016A: conv.u4
    IL_016B: ret
}
------------------------------------------------------------------------------------------------------------------------
