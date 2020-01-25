// Id := 100663497, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vdec(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vdec(Vector128<Int16> src)
// AggressiveInlining
Vector128<Int16> vdec(Vector128<Int16> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.VPattern::vunits<System.Int16>(Z0.N128,System.Int16)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0011: ret
}
