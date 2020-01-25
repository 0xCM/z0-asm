// Id := 100665054, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbfly(Z0.N2,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vbfly(N2 n, Vector128<uint> x)
// AggressiveInlining
Vector128<uint> vbfly(N2 n, Vector128<uint> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::v3C(Z0.N128,Z0.N32)
    IL_0010: ldc.i4.2
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbutterfly<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0016: ret
}
