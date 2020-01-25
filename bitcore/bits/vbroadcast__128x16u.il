// Id := 100663364, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.Bits::vbroadcast(System.UInt16)
// Vector128<ushort> vbroadcast(ushort src)
// AggressiveInlining
Vector128<ushort> vbroadcast(ushort src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt16*)
    IL_0008: ret
}
