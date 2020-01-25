// Id := 100663579, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vnegate(Vector128<uint> src)
// AggressiveInlining
Vector128<uint> vnegate(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.VPattern::vones<System.UInt32>(Z0.N128,System.UInt32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0016: ret
}
