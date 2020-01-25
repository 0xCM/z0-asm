// Id := 100663542, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vinc(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vinc(Vector256<ushort> src)
// AggressiveInlining
Vector256<ushort> vinc(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: ldc.i4.0
    IL_0007: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.VPattern::vunits<System.UInt16>(Z0.N256,System.UInt16)
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vadd(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0011: ret
}
