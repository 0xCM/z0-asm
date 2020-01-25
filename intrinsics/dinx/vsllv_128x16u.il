// Id := 100664344, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vsllv(Vector128<ushort> src, Vector128<ushort> counts)
// AggressiveInlining
Vector128<ushort> vsllv(Vector128<ushort> src, Vector128<ushort> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt32)
    IL_0019: stloc.1
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0021: stloc.2
    IL_0022: ldloc.2
    IL_0023: call Z0.N128 zfunc::get_n128()
    IL_0028: ldc.i4.0
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,Z0.N128,System.UInt16)
    IL_002E: ret
}
