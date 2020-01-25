// Id := 100665072, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N4,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vbfly(N4 n, Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbfly(N4 n, Vector256<ulong> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N64 zfunc::get_n64()
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::v0FF0(Z0.N256,Z0.N64)
    IL_0010: ldc.i4.4
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbutterfly<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0016: ret
}
