// Id := 100663754, Name := Z0.Vector512`1<System.UInt16> Z0.dinx::vmerge(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector512<ushort> vmerge(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector512<ushort> vmerge(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::UnpackLow(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: stloc.0
    IL_0008: ldarg.0
    IL_0009: ldarg.1
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::UnpackHigh(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000F: stloc.1
    IL_0010: ldloc.0
    IL_0011: ldloc.1
    IL_0012: ldc.i4.s 32
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.Perm2x4)
    IL_0019: stloc.2
    IL_001A: ldloc.0
    IL_001B: ldloc.1
    IL_001C: ldc.i4.s 49
    IL_001E: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vperm2x128(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,Z0.Perm2x4)
    IL_0023: stloc.3
    IL_0024: ldloc.2
    IL_0025: ldloc.3
    IL_0026: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_002B: call Z0.Vector512`1<System.UInt16> Z0.Vector512`1<System.UInt16>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>>)
    IL_0030: ret
}
