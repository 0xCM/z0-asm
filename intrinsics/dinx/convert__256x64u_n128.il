// Id := 100664799, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::convert(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N128,System.UInt32)
// Vector128<uint> convert(Vector256<ulong> src, N128 w, uint t)
// AggressiveInlining
Vector128<uint> convert(Vector256<ulong> src, N128 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Double> zfunc::v64f<System.UInt64>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Avx::ConvertToVector128Int32(System.Runtime.Intrinsics.Vector256`1<System.Double>)
    IL_000B: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0010: ret
}
