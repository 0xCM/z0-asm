// Id := 100663540, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vinc(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vinc(Vector256<byte> src)
// AggressiveInlining
Vector256<byte> vinc(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VPattern::vunits<System.Byte>(Z0.N256,System.Byte)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0011: ret
}
