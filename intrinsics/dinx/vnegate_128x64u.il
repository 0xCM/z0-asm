// Id := 100663581, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vnegate(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vnegate(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: conv.i8
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.VPattern::vones<System.UInt64>(Z0.N128,System.UInt64)
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0017: ret
}
