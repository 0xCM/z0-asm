// Id := 100663697, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vhi(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vhi(Vector128<byte> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 zfunc::vcell<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
