// Id := 100663363, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.Bits::vbroadcast(System.Byte)
// Vector128<byte> vbroadcast(byte src)
// AggressiveInlining
Vector128<byte> vbroadcast(byte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Byte*)
    IL_0008: ret
}
