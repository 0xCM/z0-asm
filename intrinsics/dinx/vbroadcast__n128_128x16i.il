// Id := 100663632, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vbroadcast(Z0.N128,System.Int16)
// Vector128<Int16> vbroadcast(N128 n, Int16 src)
// AggressiveInlining
Vector128<Int16> vbroadcast(N128 n, Int16 src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.Int16*)
    IL_0008: ret
}
