// Id := 100663684, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vpart30x8x3(System.UInt32)
// Vector256<ushort> vpart30x8x3(uint src)
// AggressiveInlining
Vector256<ushort> vpart30x8x3(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4 1073741823
    IL_0006: and
    IL_0007: stloc.0
    IL_0008: ldc.i4 32767
    IL_000D: ldloc.0
    IL_000E: and
    IL_000F: call System.UInt16 Z0.As::uint16<System.UInt32>(System.UInt32)
    IL_0014: stloc.1
    IL_0015: ldc.i4 32767
    IL_001A: ldloc.0
    IL_001B: ldc.i4.s 15
    IL_001D: shr.un
    IL_001E: and
    IL_001F: call System.UInt16 Z0.As::uint16<System.UInt32>(System.UInt32)
    IL_0024: stloc.2
    IL_0025: call Z0.N256 zfunc::get_n256()
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: ldc.i4.s 16
    IL_002E: shl
    IL_002F: or
    IL_0030: call System.UInt32 Z0.As::uint32<System.Int32>(System.Int32)
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vbroadcast<System.UInt32>(Z0.N256,System.UInt32)
    IL_003A: stloc.3
    IL_003B: call Z0.N256 zfunc::get_n256()
    IL_0040: ldc.i4 458759
    IL_0045: ldc.i4 3670072
    IL_004A: ldc.i4 29360576
    IL_004F: ldc.i4 234884608
    IL_0054: ldc.i4 1879076864
    IL_0059: ldc.i4.0
    IL_005A: ldc.i4.0
    IL_005B: ldc.i4.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vparts(Z0.N256,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_0061: stloc.s V_4
    IL_0063: call Z0.N256 zfunc::get_n256()
    IL_0068: ldc.i4.0
    IL_0069: ldc.i4.3
    IL_006A: ldc.i4.6
    IL_006B: ldc.i4.s 9
    IL_006D: ldc.i4.s 12
    IL_006F: ldc.i4.0
    IL_0070: ldc.i4.0
    IL_0071: ldc.i4.0
    IL_0072: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.CpuVector::vparts(Z0.N256,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32,System.UInt32)
    IL_0077: stloc.s V_5
    IL_0079: ldloc.3
    IL_007A: ldloc.s V_4
    IL_007C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vand(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0081: ldloc.s V_5
    IL_0083: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsrlv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0088: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_008D: stloc.s V_6
    IL_008F: call Z0.N256 zfunc::get_n256()
    IL_0094: ldloc.s V_6
    IL_0096: ldc.i4.0
    IL_0097: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_009C: ldloc.s V_6
    IL_009E: ldc.i4.2
    IL_009F: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00A4: ldloc.s V_6
    IL_00A6: ldc.i4.4
    IL_00A7: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00AC: ldloc.s V_6
    IL_00AE: ldc.i4.6
    IL_00AF: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00B4: ldloc.s V_6
    IL_00B6: ldc.i4.8
    IL_00B7: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00BC: ldloc.s V_6
    IL_00BE: ldc.i4.1
    IL_00BF: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00C4: ldloc.s V_6
    IL_00C6: ldc.i4.3
    IL_00C7: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00CC: ldloc.s V_6
    IL_00CE: ldc.i4.5
    IL_00CF: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00D4: ldloc.s V_6
    IL_00D6: ldc.i4.7
    IL_00D7: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00DC: ldloc.s V_6
    IL_00DE: ldc.i4.s 9
    IL_00E0: call System.UInt16 zfunc::vcell<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Int32)
    IL_00E5: ldc.i4.0
    IL_00E6: ldc.i4.0
    IL_00E7: ldc.i4.0
    IL_00E8: ldc.i4.0
    IL_00E9: ldc.i4.0
    IL_00EA: ldc.i4.0
    IL_00EB: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.CpuVector::vparts(Z0.N256,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16,System.UInt16)
    IL_00F0: stloc.s V_7
    IL_00F2: ldloc.s V_7
    IL_00F4: ret
}
