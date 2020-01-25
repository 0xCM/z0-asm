// Id := 100665267, Name := System.UInt16 Z0.ginx::vtakemask<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// ushort vtakemask<ulong>(Vector128<ulong> src)
// AggressiveInlining
ushort vtakemask<ulong>(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
