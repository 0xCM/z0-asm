// Id := 100664821, Name := Z0.Vector512`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N512,System.UInt64)
// Vector512<ulong> vconvert(Vector128<ushort> src, N512 w, ulong t)
// AggressiveInlining
Vector512<ulong> vconvert(Vector128<ushort> src, N512 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaplo(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt64)
    IL_000D: ldarg.0
    IL_000E: call Z0.N256 zfunc::get_n256()
    IL_0013: ldc.i4.0
    IL_0014: conv.i8
    IL_0015: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmaphi(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N256,System.UInt64)
    IL_001A: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>::.ctor(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_001F: call Z0.Vector512`1<System.UInt64> Z0.Vector512`1<System.UInt64>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>>)
    IL_0024: ret
}
