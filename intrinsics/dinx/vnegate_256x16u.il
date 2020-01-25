// Id := 100663585, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vnegate(Vector256<ushort> src)
// AggressiveInlining
Vector256<ushort> vnegate(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call Z0.N256 zfunc::get_n256()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.VPattern::vones<System.UInt16>(Z0.N256,System.UInt16)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0016: ret
}
