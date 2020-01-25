// Id := 100665073, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vbfly(N8 n, Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbfly(N8 n, Vector256<uint> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::v00FFFF00(Z0.N256)
    IL_000B: ldc.i4.8
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbutterfly<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0011: ret
}
