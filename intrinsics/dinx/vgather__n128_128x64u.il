// Id := 100664897, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vgather(Z0.N128,System.UInt64&,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vgather(N128 w, in ulong src, Vector128<ulong> vidx)
// AggressiveInlining
Vector128<ulong> vgather(N128 w, in ulong src, Vector128<ulong> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt64* zfunc::constptr<System.UInt64>(System.UInt64&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000C: ldc.i4.8
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.UInt64*,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Byte)
    IL_0012: ret
}
