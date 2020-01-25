// Id := 100665074, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vbfly(N8 n, Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbfly(N8 n, Vector256<ulong> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::v00FFFF0000FFFF00(Z0.N256)
    IL_000B: ldc.i4.8
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbutterfly<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Byte)
    IL_0011: ret
}
