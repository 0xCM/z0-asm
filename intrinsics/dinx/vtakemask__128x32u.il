// Id := 100663988, Name := System.UInt16 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// ushort vtakemask(Vector128<uint> src)
// AggressiveInlining
ushort vtakemask(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: conv.u2
    IL_000C: ret
}
