// Id := 100663634, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vbroadcast(Z0.N128,System.Int32)
// Vector128<int> vbroadcast(N128 n, int src)
// AggressiveInlining
Vector128<int> vbroadcast(N128 n, int src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Int32*)
    IL_0008: ret
}
