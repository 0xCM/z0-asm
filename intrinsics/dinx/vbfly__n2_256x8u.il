// Id := 100665066, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbfly(Z0.N2,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vbfly(N2 n, Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vbfly(N2 n, Vector256<byte> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N8 zfunc::get_n8()
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::v3C(Z0.N256,Z0.N8)
    IL_0010: ldc.i4.2
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbutterfly<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Byte)
    IL_0016: ret
}
