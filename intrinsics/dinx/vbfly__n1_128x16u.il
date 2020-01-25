// Id := 100665049, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vbfly(N1 n, Vector128<ushort> x)
// AggressiveInlining
Vector128<ushort> vbfly(N1 n, Vector128<ushort> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N16 zfunc::get_n16()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::v666(Z0.N128,Z0.N16)
    IL_0010: ldc.i4.1
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbutterfly<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Byte)
    IL_0016: ret
}
