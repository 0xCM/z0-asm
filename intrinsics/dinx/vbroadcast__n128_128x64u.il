// Id := 100663637, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbroadcast(Z0.N128,System.UInt64)
// Vector128<ulong> vbroadcast(N128 n, ulong src)
// AggressiveInlining
Vector128<ulong> vbroadcast(N128 n, ulong src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt64*)
    IL_0008: ret
}
