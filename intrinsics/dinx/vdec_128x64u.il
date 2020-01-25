// Id := 100663502, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vdec(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vdec(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vdec(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.VPattern::vunits<System.UInt64>(Z0.N128,System.UInt64)
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0012: ret
}
