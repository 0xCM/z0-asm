// Id := 100664814, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconvert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N256,System.UInt64)
// Vector256<ulong> vconvert(Vector128<uint> src, N256 w, ulong t)
// AggressiveInlining
Vector256<ulong> vconvert(Vector128<uint> src, N256 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::ConvertToVector256Int64(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000B: ret
}
