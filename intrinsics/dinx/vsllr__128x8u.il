// Id := 100664326, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Byte)
// Vector128<byte> vsllr(Vector128<byte> src, byte count)
// AggressiveInlining
Vector128<byte> vsllr(Vector128<byte> src, byte count)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldarg.1
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vscalar(Z0.N128,System.Byte)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsllr(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
