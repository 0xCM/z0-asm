// Id := 100664936, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vmaskgather(Z0.N128,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.UInt32&,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vmaskgather(N128 w, Vector128<uint> vsrc, ref uint msrc, Vector256<long> vidx, Vector128<uint> mask)
// AggressiveInlining
Vector128<uint> vmaskgather(N128 w, Vector128<uint> vsrc, ref uint msrc, Vector256<long> vidx, Vector128<uint> mask)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call System.UInt32* zfunc::ptr<System.UInt32>(System.UInt32&)
    IL_0007: ldarg.3
    IL_0008: ldarg.s mask
    IL_000A: ldc.i4.4
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherMaskVector128(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0010: ret
}
