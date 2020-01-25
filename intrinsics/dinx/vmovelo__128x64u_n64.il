// Id := 100663680, Name := System.UInt64 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.N64)
// ulong vmovelo(Vector128<ulong> src, N64 w)
// AggressiveInlining
ulong vmovelo(Vector128<ulong> src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToUInt64(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ret
}
