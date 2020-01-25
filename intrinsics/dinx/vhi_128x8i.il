// Id := 100663696, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vhi(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vhi(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vhi(Vector128<sbyte> src)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: ldarg.0
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000B: ldc.i4.1
    IL_000C: call System.UInt64 System.Runtime.Intrinsics.Vector128::GetElement<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Int32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vscalar(Z0.N128,System.UInt64)
    IL_0016: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_001B: ret
}
