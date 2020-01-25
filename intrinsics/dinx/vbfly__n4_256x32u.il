// Id := 100665071, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N4,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vbfly(N4 n, Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbfly(N4 n, Vector256<uint> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::v0FF0(Z0.N256,Z0.N32)
    IL_0010: ldc.i4.4
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbutterfly<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0016: ret
}
