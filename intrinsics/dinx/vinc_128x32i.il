// Id := 100663535, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vinc(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vinc(Vector128<int> src)
// AggressiveInlining
Vector128<int> vinc(Vector128<int> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.VPattern::vunits<System.Int32>(Z0.N128,System.Int32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0011: ret
}
