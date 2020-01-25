// Id := 100663365, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.Bits::vbroadcast(System.UInt32)
// Vector128<uint> vbroadcast(uint src)
// AggressiveInlining
Vector128<uint> vbroadcast(uint src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt32*)
    IL_0008: ret
}
