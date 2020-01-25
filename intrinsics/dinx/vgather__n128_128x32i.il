// Id := 100664894, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vgather(Z0.N128,System.Int32&,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vgather(N128 w, in int src, Vector128<int> index)
// AggressiveInlining
Vector128<int> vgather(N128 w, in int src, Vector128<int> index)
{
    IL_0000: ldarg.1
    IL_0001: call System.Int32* zfunc::constptr<System.Int32>(System.Int32&)
    IL_0006: ldarg.2
    IL_0007: ldc.i4.4
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.Int32*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_000D: ret
}
