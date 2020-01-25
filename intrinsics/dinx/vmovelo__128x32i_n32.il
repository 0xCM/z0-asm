// Id := 100663677, Name := System.Int32 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N32)
// int vmovelo(Vector128<int> src, N32 w)
// AggressiveInlining
int vmovelo(Vector128<int> src, N32 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ret
}
