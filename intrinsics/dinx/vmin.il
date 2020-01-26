// Id := 100664616, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vmin(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vmin(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::Min(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664617, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vmin(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<sbyte> vmin(Vector128<sbyte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse41::Min(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664618, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vmin(Vector128<short> x, Vector128<short> y)
// AggressiveInlining
Vector128<short> vmin(Vector128<short> x, Vector128<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::Min(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664619, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vmin(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vmin(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse41::Min(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664620, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vmin(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vmin(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::Min(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664621, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vmin(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vmin(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse41::Min(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664622, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vmin(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vmin(Vector128<long> x, Vector128<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldloca.s V_2
    IL_0003: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_0009: ldloc.2
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vinsert(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0010: stloc.0
    IL_0011: ldarg.1
    IL_0012: ldloca.s V_2
    IL_0014: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_001A: ldloc.2
    IL_001B: ldc.i4.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vinsert(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Byte)
    IL_0021: stloc.1
    IL_0022: ldloc.0
    IL_0023: ldloc.1
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664624, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vmin(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vmin(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Min(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664625, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vmin(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<sbyte> vmin(Vector256<sbyte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Min(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664626, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<short> vmin(Vector256<short> x, Vector256<short> y)
// AggressiveInlining
Vector256<short> vmin(Vector256<short> x, Vector256<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Min(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664627, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vmin(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vmin(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Min(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664628, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vmin(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vmin(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::Min(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664629, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vmin(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<uint> vmin(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::Min(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664630, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vmin(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vmin(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> vmin(Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vselect(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_000E: ret
}
------------------------------------------------------------------------------------------------------------------------
