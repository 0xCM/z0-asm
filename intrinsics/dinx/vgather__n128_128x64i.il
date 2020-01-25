// Id := 100664896, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vgather(Z0.N128,System.Int64&,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vgather(N128 w, in long src, Vector128<long> vidx)
// AggressiveInlining
Vector128<long> vgather(N128 w, in long src, Vector128<long> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.Int64* zfunc::constptr<System.Int64>(System.Int64&)
    IL_0006: ldarg.2
    IL_0007: ldc.i4.8
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.Int64*,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Byte)
    IL_000D: ret
}
