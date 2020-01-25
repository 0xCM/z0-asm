// Id := 100663794, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vbyteswap(Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vbyteswap(Vector256<ushort> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N16 zfunc::get_n16()
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::byteswap<Z0.N16>(Z0.N256,Z0.N16)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0015: ret
}
