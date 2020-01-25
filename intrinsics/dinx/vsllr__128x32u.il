// Id := 100664330, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.UInt32)
// Vector128<uint> vsllr(Vector128<uint> src, uint count)
// AggressiveInlining
Vector128<uint> vsllr(Vector128<uint> src, uint count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vscalar(Z0.N128,System.UInt32)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0011: ret
}
