// Id := 100663500, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vdec(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vdec(Vector128<uint> src)
// AggressiveInlining
Vector128<uint> vdec(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.VPattern::vunits<System.UInt32>(Z0.N128,System.UInt32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0011: ret
}
