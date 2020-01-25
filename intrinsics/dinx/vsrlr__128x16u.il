// Id := 100664404, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.UInt16)
// Vector128<ushort> vsrlr(Vector128<ushort> src, ushort count)
// AggressiveInlining
Vector128<ushort> vsrlr(Vector128<ushort> src, ushort count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vscalar(Z0.N128,System.UInt16)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsrlr(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0011: ret
}
