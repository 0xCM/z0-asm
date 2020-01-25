// Id := 100664579, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vgt(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vgt(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldc.i4 32768
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.CpuVector::vbroadcast<System.UInt16>(Z0.N256,System.UInt16)
    IL_000F: stloc.0
    IL_0010: ldarg.0
    IL_0011: ldloc.0
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0017: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.Vector256::AsInt16<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_001C: stloc.1
    IL_001D: ldarg.1
    IL_001E: ldloc.0
    IL_001F: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vxor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.Vector256::AsInt16<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0029: stloc.2
    IL_002A: ldloc.1
    IL_002B: ldloc.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::CompareGreaterThan(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0031: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.Vector256::AsUInt16<System.Int16>(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0036: ret
}
