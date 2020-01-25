// Id := 100663986, Name := System.UInt16 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// ushort vtakemask(Vector128<byte> src)
// AggressiveInlining
ushort vtakemask(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::MoveMask(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: conv.u2
    IL_0007: ret
}
