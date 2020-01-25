// Id := 100663537, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vinc(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vinc(Vector128<long> src)
// AggressiveInlining
Vector128<long> vinc(Vector128<long> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: conv.i8
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.VPattern::vunits<System.Int64>(Z0.N128,System.Int64)
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0012: ret
}
