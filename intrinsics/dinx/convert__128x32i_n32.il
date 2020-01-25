// Id := 100664794, Name := System.Int32 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N32,System.Int32)
// int convert(Vector128<int> src, N32 w, int t)
// AggressiveInlining
int convert(Vector128<int> src, N32 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ret
}
