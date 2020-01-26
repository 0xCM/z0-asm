// Id := 100664602, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vmax(Vector128<Int16> x, Vector128<Int16> y)
// AggressiveInlining
Vector128<Int16> vmax(Vector128<Int16> x, Vector128<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::Max(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664603, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vmax(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vmax(Vector128<ushort> x, Vector128<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> System.Runtime.Intrinsics.X86.Sse41::Max(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664604, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vmax(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vmax(Vector128<int> x, Vector128<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::Max(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664605, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vmax(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vmax(Vector128<uint> x, Vector128<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> System.Runtime.Intrinsics.X86.Sse41::Max(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664607, Name := System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vmax(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vmax(Vector128<long> x, Vector128<long> y)
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
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vlo(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_002E: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664608, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vmax(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> vmax(Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::Max(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664609, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vmax(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<sbyte> vmax(Vector256<sbyte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Max(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664610, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<Int16> vmax(Vector256<Int16> x, Vector256<Int16> y)
// AggressiveInlining
Vector256<Int16> vmax(Vector256<Int16> x, Vector256<Int16> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::Max(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664611, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vmax(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> vmax(Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::Max(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664612, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vmax(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vmax(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::Max(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664613, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vmax(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<uint> vmax(Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::Max(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664615, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vmax(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector256<long> vmax(Vector256<long> x, Vector256<long> y)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vgt(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_0009: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<System.Int64>(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664600, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vmax(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vmax(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::Max(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664601, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vmax(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vmax(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<sbyte> vmax(Vector128<sbyte> x, Vector128<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse41::Max(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
