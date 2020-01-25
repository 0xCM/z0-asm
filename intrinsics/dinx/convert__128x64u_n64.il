// Id := 100664797, Name := System.UInt64 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.N64,System.UInt64)
// ulong convert(Vector128<ulong> src, N64 w, ulong t)
// AggressiveInlining
ulong convert(Vector128<ulong> src, N64 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToUInt64(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ret
}
