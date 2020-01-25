// Id := 100664812, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N256,System.Int64)
// Vector256<long> vconvert(Vector128<int> src, N256 w, long t)
// AggressiveInlining
Vector256<long> vconvert(Vector128<int> src, N256 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ret
}
