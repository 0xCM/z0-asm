// Id := 100664791, Name := System.Int32 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N32,System.Int32)
// int convert(Vector128<int> src, N32 w, int t)
// AggressiveInlining
int convert(Vector128<int> src, N32 w, int t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664792, Name := System.UInt32 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N32,System.UInt32)
// uint convert(Vector128<uint> src, N32 w, uint t)
// AggressiveInlining
uint convert(Vector128<uint> src, N32 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664793, Name := System.Int64 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.Int64>,Z0.N64,System.Int64)
// long convert(Vector128<long> src, N64 w, long t)
// AggressiveInlining
long convert(Vector128<long> src, N64 w, long t)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToInt64(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664794, Name := System.UInt64 Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.N64,System.UInt64)
// ulong convert(Vector128<ulong> src, N64 w, ulong t)
// AggressiveInlining
ulong convert(Vector128<ulong> src, N64 w, ulong t)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToUInt64(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664795, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.N128,System.UInt32)
// Vector128<uint> convert(Vector128<ulong> lo, Vector128<ulong> hi, N128 w, uint t)
// AggressiveInlining
Vector128<uint> convert(Vector128<ulong> lo, Vector128<ulong> hi, N128 w, uint t)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0007: ldarg.2
    IL_0008: ldarg.3
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::convert(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N128,System.UInt32)
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664796, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::convert(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,Z0.N128,System.UInt32)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100664797, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::convert(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N256,System.UInt64)
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
------------------------------------------------------------------------------------------------------------------------
