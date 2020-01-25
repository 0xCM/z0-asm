// Id := 100663889, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vreverse(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vreverse(Vector256<byte> src)
// AggressiveInlining
Vector256<byte> vreverse(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VPattern::vdecrements<System.Byte>(Z0.N256)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vshuf32x8(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0010: ret
}
