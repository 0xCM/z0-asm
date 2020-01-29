// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vbyteswap(Vector128<ushort> x)
// AggressiveInlining
Vector128<ushort> vbyteswap(Vector128<ushort> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N16 zfunc::get_n16()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::byteswap<Z0.N16>(Z0.N128,Z0.N16)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vbyteswap(Vector128<uint> x)
// AggressiveInlining
Vector128<uint> vbyteswap(Vector128<uint> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::byteswap<Z0.N32>(Z0.N128,Z0.N32)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vbyteswap(Vector128<ulong> x)
// AggressiveInlining
Vector128<ulong> vbyteswap(Vector128<ulong> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N128 zfunc::get_n128()
    IL_0006: call Z0.N64 zfunc::get_n64()
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VData::byteswap<Z0.N64>(Z0.N128,Z0.N64)
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
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
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vbyteswap(Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbyteswap(Vector256<uint> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N32 zfunc::get_n32()
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::byteswap<Z0.N32>(Z0.N256,Z0.N32)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vbyteswap(Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbyteswap(Vector256<ulong> x)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.N256 zfunc::get_n256()
    IL_0006: call Z0.N64 zfunc::get_n64()
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VData::byteswap<Z0.N64>(Z0.N256,Z0.N64)
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vshuf16x8(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
