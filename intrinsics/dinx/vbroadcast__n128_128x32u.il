// Id := 100663635, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbroadcast(Z0.N128,System.UInt32)
// Vector128<uint> vbroadcast(N128 n, uint src)
// AggressiveInlining
Vector128<uint> vbroadcast(N128 n, uint src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt32*)
    IL_0008: ret
}
