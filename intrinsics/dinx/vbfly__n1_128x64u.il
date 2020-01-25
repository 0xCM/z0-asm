// Id := 100665051, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vbfly(N1 n, Vector128<ulong> x)
// AggressiveInlining
Vector128<ulong> vbfly(N1 n, Vector128<ulong> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N64 zfunc::get_n64()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::v666(Z0.N128,Z0.N64)
    IL_0010: ldc.i4.1
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbutterfly<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0016: ret
}
