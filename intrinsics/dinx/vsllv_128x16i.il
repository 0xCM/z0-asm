// Id := 100664343, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsllv(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vsllv(Vector128<Int16> src, Vector128<Int16> counts)
// AggressiveInlining
Vector128<Int16> vsllv(Vector128<Int16> src, Vector128<Int16> counts)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
    IL_000C: stloc.0
    IL_000D: ldarg.1
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vinflate(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N256,System.Int32)
    IL_0019: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_001E: stloc.1
    IL_001F: ldloc.0
    IL_0020: ldloc.1
    IL_0021: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::ShiftLeftLogicalVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0026: stloc.2
    IL_0027: ldloc.2
    IL_0028: call Z0.N128 zfunc::get_n128()
    IL_002D: ldc.i4.0
    IL_002E: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vcompact(System.Runtime.Intrinsics.Vector256`1<System.Int32>,Z0.N128,System.Int16)
    IL_0033: ret
}
