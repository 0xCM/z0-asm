// Id := 100663631, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vbroadcast(Z0.N128,System.Byte)
// Vector128<byte> vbroadcast(N128 n, byte src)
// AggressiveInlining
Vector128<byte> vbroadcast(N128 n, byte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Byte*)
    IL_0008: ret
}
