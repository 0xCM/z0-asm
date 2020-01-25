// Id := 100663699, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vhi(Vector128<ushort> src)
// AggressiveInlining
Vector128<ushort> vhi(Vector128<ushort> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
