// Id := 100665061, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbfly(Z0.N16,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vbfly(N16 n, Vector128<ulong> x)
// AggressiveInlining
Vector128<ulong> vbfly(N16 n, Vector128<ulong> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::v0000FFFFFFFF0000(Z0.N128)
    IL_000B: ldc.i4.s 16
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbutterfly<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0012: ret
}
