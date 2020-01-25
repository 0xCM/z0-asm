// Id := 100664934, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vmaskgather(Z0.N128,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.UInt64&,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vmaskgather(N128 w, Vector128<ulong> vsrc, ref ulong msrc, Vector128<int> vidx, Vector128<ulong> mask)
// AggressiveInlining
Vector128<ulong> vmaskgather(N128 w, Vector128<ulong> vsrc, ref ulong msrc, Vector128<int> vidx, Vector128<ulong> mask)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call System.UInt64* zfunc::ptr<System.UInt64>(System.UInt64&)
    IL_0007: ldarg.3
    IL_0008: ldarg.s mask
    IL_000A: ldc.i4.8
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherMaskVector128(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.UInt64*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0010: ret
}
