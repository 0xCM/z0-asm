// Id := 100664915, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vgather(Z0.N256,System.UInt16&,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vgather(N256 w, in ushort src, Vector256<uint> vidx)
// AggressiveInlining
Vector256<uint> vgather(N256 w, in ushort src, Vector256<uint> vidx)
{
    IL_0000: ldarg.1
    IL_0001: call System.UInt32& Z0.AsIn::uint32<System.UInt16>(System.UInt16&)
    IL_0006: call System.UInt32* zfunc::constptr<System.UInt32>(System.UInt32&)
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0011: ldc.i4.2
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::GatherVector256(System.UInt32*,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Byte)
    IL_0017: ret
}
