// Id := 100663531, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vinc(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vinc(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vinc(Vector128<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.VPattern::vunits<System.SByte>(Z0.N128,System.SByte)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0011: ret
}
