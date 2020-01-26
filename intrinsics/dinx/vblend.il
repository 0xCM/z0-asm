// Id := 100664512, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vblend(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<byte> vblend(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664513, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<sbyte> vblend(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<sbyte> vblend(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664514, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<short> vblend(Vector128<short> x, Vector128<short> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<short> vblend(Vector128<short> x, Vector128<short> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664515, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ushort> vblend(Vector128<ushort> x, Vector128<ushort> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<ushort> vblend(Vector128<ushort> x, Vector128<ushort> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664516, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<int> vblend(Vector128<int> x, Vector128<int> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<int> vblend(Vector128<int> x, Vector128<int> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664517, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<uint> vblend(Vector128<uint> x, Vector128<uint> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<uint> vblend(Vector128<uint> x, Vector128<uint> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664518, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<long> vblend(Vector128<long> x, Vector128<long> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<long> vblend(Vector128<long> x, Vector128<long> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int64> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664519, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ulong> vblend(Vector128<ulong> x, Vector128<ulong> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<ulong> vblend(Vector128<ulong> x, Vector128<ulong> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664520, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vblend(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<byte> vblend(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664521, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<sbyte> vblend(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<sbyte> vblend(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664522, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<short> vblend(Vector256<short> x, Vector256<short> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<short> vblend(Vector256<short> x, Vector256<short> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int16> zfunc::v16i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664523, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ushort> vblend(Vector256<ushort> x, Vector256<ushort> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<ushort> vblend(Vector256<ushort> x, Vector256<ushort> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664524, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<int> vblend(Vector256<int> x, Vector256<int> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<int> vblend(Vector256<int> x, Vector256<int> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664525, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<uint> vblend(Vector256<uint> x, Vector256<uint> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<uint> vblend(Vector256<uint> x, Vector256<uint> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664526, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<long> vblend(Vector256<long> x, Vector256<long> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<long> vblend(Vector256<long> x, Vector256<long> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.Int64> zfunc::v64i<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664527, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ulong> vblend(Vector256<ulong> x, Vector256<ulong> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<ulong> vblend(Vector256<ulong> x, Vector256<ulong> y, Vector256<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::BlendVariable(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
