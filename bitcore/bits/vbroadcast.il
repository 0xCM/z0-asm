// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.Bits::vbroadcast(System.Byte)
// Vector128<byte> vbroadcast(byte src)
// AggressiveInlining
Vector128<byte> vbroadcast(byte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Byte*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.Bits::vbroadcast(System.UInt16)
// Vector128<ushort> vbroadcast(ushort src)
// AggressiveInlining
Vector128<ushort> vbroadcast(ushort src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt16*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.Bits::vbroadcast(System.UInt32)
// Vector128<uint> vbroadcast(uint src)
// AggressiveInlining
Vector128<uint> vbroadcast(uint src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt32*)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
