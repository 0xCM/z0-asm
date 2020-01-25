// Id := 100663577, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vnegate(Vector128<ushort> src)
// AggressiveInlining
Vector128<ushort> vnegate(Vector128<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.VPattern::vones<System.UInt16>(Z0.N128,System.UInt16)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0016: ret
}
