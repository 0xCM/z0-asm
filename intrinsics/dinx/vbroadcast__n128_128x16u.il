// Id := 100663633, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbroadcast(Z0.N128,System.UInt16)
// Vector128<ushort> vbroadcast(N128 n, ushort src)
// AggressiveInlining
Vector128<ushort> vbroadcast(N128 n, ushort src)
{
    IL_0000: ldarga.s src
    IL_0002: conv.u
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::BroadcastScalarToVector128(System.UInt16*)
    IL_0008: ret
}
