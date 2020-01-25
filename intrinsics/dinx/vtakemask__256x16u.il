// Id := 100663991, Name := System.UInt32 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// uint vtakemask(Vector256<ushort> src)
// AggressiveInlining
uint vtakemask(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.UInt16>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
