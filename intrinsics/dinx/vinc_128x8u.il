// Id := 100663532, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vinc(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vinc(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vinc(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VPattern::vunits<System.Byte>(Z0.N128,System.Byte)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0011: ret
}
