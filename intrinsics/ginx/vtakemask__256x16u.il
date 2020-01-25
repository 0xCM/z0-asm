// Id := 100665268, Name := System.UInt32 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// uint vtakemask<ushort>(Vector256<ushort> src)
// AggressiveInlining
uint vtakemask<ushort>(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_000B: ret
}
