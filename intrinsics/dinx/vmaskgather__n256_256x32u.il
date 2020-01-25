// Id := 100664937, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmaskgather(Z0.N256,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.UInt32&,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vmaskgather(N256 w, Vector256<uint> vsrc, ref uint msrc, Vector256<int> vidx, Vector256<uint> mask)
// AggressiveInlining
Vector256<uint> vmaskgather(N256 w, Vector256<uint> vsrc, ref uint msrc, Vector256<int> vidx, Vector256<uint> mask)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call System.UInt32* zfunc::ptr<System.UInt32>(System.UInt32&)
    IL_0007: ldarg.3
    IL_0008: ldarg.s mask
    IL_000A: ldc.i4.4
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherMaskVector256(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Byte)
    IL_0010: ret
}
