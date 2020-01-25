// Id := 100664899, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vgather(Z0.N128,System.UInt32&,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vgather(N128 w, in uint src, Vector128<uint> vidx)
// AggressiveInlining
Vector128<uint> vgather(N128 w, in uint src, Vector128<uint> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_0006: ldarg.2
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: ldc.i4.4
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector128(System.UInt32*,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_0012: ret
}
