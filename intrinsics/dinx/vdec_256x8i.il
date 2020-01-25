// Id := 100663503, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vdec(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vdec(Vector256<sbyte> src)
// AggressiveInlining
Vector256<sbyte> vdec(Vector256<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.VPattern::vunits<System.SByte>(Z0.N256,System.SByte)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0011: ret
}
