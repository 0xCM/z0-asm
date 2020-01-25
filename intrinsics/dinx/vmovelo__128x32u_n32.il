// Id := 100663678, Name := System.UInt32 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N32)
// uint vmovelo(Vector128<uint> src, N32 w)
// AggressiveInlining
uint vmovelo(Vector128<uint> src, N32 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ret
}
