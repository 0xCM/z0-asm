// Id := 100664796, Name := System.Int64 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.Int64>,Z0.N64,System.Int64)
// long convert(Vector128<long> src, N64 w, long t)
// AggressiveInlining
long convert(Vector128<long> src, N64 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToInt64(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ret
}
