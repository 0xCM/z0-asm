// Id := 100663990, Name := System.UInt32 Z0.dinx::vtakemask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// uint vtakemask(Vector256<byte> src)
// AggressiveInlining
uint vtakemask(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Avx2::MoveMask(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: ret
}
