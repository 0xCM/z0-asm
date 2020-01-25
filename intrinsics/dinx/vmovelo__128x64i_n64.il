// Id := 100663679, Name := System.Int64 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int64>,Z0.N64)
// long vmovelo(Vector128<long> src, N64 w)
// AggressiveInlining
long vmovelo(Vector128<long> src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToInt64(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ret
}
