// Id := 100665067, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbfly(Z0.N2,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vbfly(N2 n, Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vbfly(N2 n, Vector256<ushort> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N16 zfunc::get_n16()
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::v3C(Z0.N256,Z0.N16)
    IL_0010: ldc.i4.2
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbutterfly<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Byte)
    IL_0016: ret
}
