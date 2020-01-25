// Id := 100664800, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N256,System.UInt64)
// Vector256<ulong> convert(Vector128<uint> src, N256 w, ulong t)
// AggressiveInlining
Vector256<ulong> convert(Vector128<uint> src, N256 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.X86.Avx::ConvertToVector256Double(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Double>(System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_0010: ret
}
