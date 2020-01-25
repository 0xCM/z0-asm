// Id := 100664911, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vgather(Z0.N256,System.UInt64&,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector256<ulong> vgather(N256 w, in ulong src, Vector128<uint> vidx)
// AggressiveInlining
Vector256<ulong> vgather(N256 w, in ulong src, Vector128<uint> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ldc.i4.8
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt64*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_0012: ret
}
