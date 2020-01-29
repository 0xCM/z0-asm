// Id := 100663667, Name := System.Runtime.Intrinsics.Vector128`1<System.Single> Z0.dinx::vmovelo(System.Int32,System.Runtime.Intrinsics.Vector128`1<System.Single>)
// Vector128<float> vmovelo(int src, Vector128<float> dst)
// AggressiveInlining
Vector128<float> vmovelo(int src, Vector128<float> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Single> System.Runtime.Intrinsics.X86.Sse::ConvertScalarToVector128Single(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Int32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663668, Name := System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.dinx::vmovelo(System.Int32,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector128<double> vmovelo(int src, Vector128<double> dst)
// AggressiveInlining
Vector128<double> vmovelo(int src, Vector128<double> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Int32)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663669, Name := System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.dinx::vmovelo(System.Int64,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector128<double> vmovelo(long src, Vector128<double> dst)
// AggressiveInlining
Vector128<double> vmovelo(long src, Vector128<double> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2/X64::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Int64)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663670, Name := System.SByte Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.SByte>,Z0.N8)
// sbyte vmovelo(Vector128<sbyte> src, N8 w)
// AggressiveInlining
sbyte vmovelo(Vector128<sbyte> src, N8 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.SByte>(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: conv.i1
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663671, Name := System.Byte Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,Z0.N8)
// byte vmovelo(Vector128<byte> src, N8 w)
// AggressiveInlining
byte vmovelo(Vector128<byte> src, N8 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: conv.u1
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663672, Name := System.Int16 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int16>,Z0.N16)
// short vmovelo(Vector128<short> src, N16 w)
// AggressiveInlining
short vmovelo(Vector128<short> src, N16 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.Int16>(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0006: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000B: conv.i2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663673, Name := System.UInt16 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,Z0.N16)
// ushort vmovelo(Vector128<ushort> src, N16 w)
// AggressiveInlining
ushort vmovelo(Vector128<ushort> src, N16 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: conv.u2
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663674, Name := System.Int32 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int32>,Z0.N32)
// int vmovelo(Vector128<int> src, N32 w)
// AggressiveInlining
int vmovelo(Vector128<int> src, N32 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Runtime.Intrinsics.X86.Sse2::ConvertToInt32(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663675, Name := System.UInt32 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,Z0.N32)
// uint vmovelo(Vector128<uint> src, N32 w)
// AggressiveInlining
uint vmovelo(Vector128<uint> src, N32 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Sse2::ConvertToUInt32(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663676, Name := System.Int64 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int64>,Z0.N64)
// long vmovelo(Vector128<long> src, N64 w)
// AggressiveInlining
long vmovelo(Vector128<long> src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToInt64(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663677, Name := System.UInt64 Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,Z0.N64)
// ulong vmovelo(Vector128<ulong> src, N64 w)
// AggressiveInlining
ulong vmovelo(Vector128<ulong> src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 System.Runtime.Intrinsics.X86.Sse2/X64::ConvertToUInt64(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663678, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vmovelo(Vector128<uint> src, Vector128<ulong> dst)
// AggressiveInlining
Vector128<ulong> vmovelo(Vector128<uint> src, Vector128<ulong> dst)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Double> zfunc::v64f<System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Single> zfunc::v32f<System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Double>(System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663679, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vmovelo(Vector128<int> src, Vector128<long> dst)
// AggressiveInlining
Vector128<long> vmovelo(Vector128<int> src, Vector128<long> dst)
{
    IL_0000: ldarg.1
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Double> zfunc::v64f<System.Int64>(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_0006: ldarg.0
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Single> zfunc::v32f<System.Int32>(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.Double>(System.Runtime.Intrinsics.Vector128`1<System.Double>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := System.Runtime.Intrinsics.Vector128`1<System.Double> Z0.dinx::vmovelo(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector128<double> vmovelo(Vector128<float> src, Vector128<double> dst)
// AggressiveInlining
Vector128<double> vmovelo(Vector128<float> src, Vector128<double> dst)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Double> System.Runtime.Intrinsics.X86.Sse2::ConvertScalarToVector128Double(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
