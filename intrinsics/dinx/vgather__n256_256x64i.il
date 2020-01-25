// Id := 100664913, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vgather(Z0.N256,System.UInt64&,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
// Vector256<ulong> vgather(N256 w, in ulong src, Vector256<long> vidx, byte scale)
// AggressiveInlining
Vector256<ulong> vgather(N256 w, in ulong src, Vector256<long> vidx, byte scale)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: ldarg.3
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt64*,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_000D: ret
}
