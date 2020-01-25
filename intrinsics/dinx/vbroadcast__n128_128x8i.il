// Id := 100663630, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vbroadcast(Z0.N128,System.SByte)
// Vector128<sbyte> vbroadcast(N128 n, sbyte src)
// AggressiveInlining
Vector128<sbyte> vbroadcast(N128 n, sbyte src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.SByte*)
    IL_0008: ret
}
