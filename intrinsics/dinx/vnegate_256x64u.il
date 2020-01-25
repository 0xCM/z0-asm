// Id := 100663589, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vnegate(Vector256<ulong> src)
// AggressiveInlining
Vector256<ulong> vnegate(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: call Z0.N256 zfunc::get_n256()
    IL_000B: ldc.i4.0
    IL_000C: conv.i8
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.VPattern::vones<System.UInt64>(Z0.N256,System.UInt64)
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0017: ret
}
