// Id := 100665059, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vbfly(N8 n, Vector128<uint> x)
// AggressiveInlining
Vector128<uint> vbfly(N8 n, Vector128<uint> x)
{
    IL_0000: ldarg.1
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::v00FFFF00(Z0.N128)
    IL_000B: ldc.i4.8
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbutterfly<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0011: ret
}
