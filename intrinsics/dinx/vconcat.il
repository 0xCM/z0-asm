// Id := 100663683, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector256<byte> vconcat(Vector128<byte> lo, Vector128<byte> hi)
// AggressiveInlining
Vector256<byte> vconcat(Vector128<byte> lo, Vector128<byte> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Byte>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Byte> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663684, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector256<sbyte> vconcat(Vector128<sbyte> lo, Vector128<sbyte> hi)
// AggressiveInlining
Vector256<sbyte> vconcat(Vector128<sbyte> lo, Vector128<sbyte> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.SByte>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663685, Name := System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector256<short> vconcat(Vector128<short> lo, Vector128<short> hi)
// AggressiveInlining
Vector256<short> vconcat(Vector128<short> lo, Vector128<short> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int16>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Int16> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663686, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector256<ushort> vconcat(Vector128<ushort> lo, Vector128<ushort> hi)
// AggressiveInlining
Vector256<ushort> vconcat(Vector128<ushort> lo, Vector128<ushort> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.UInt16>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663687, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector256<int> vconcat(Vector128<int> lo, Vector128<int> hi)
// AggressiveInlining
Vector256<int> vconcat(Vector128<int> lo, Vector128<int> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int32>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Int32> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663688, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector256<uint> vconcat(Vector128<uint> lo, Vector128<uint> hi)
// AggressiveInlining
Vector256<uint> vconcat(Vector128<uint> lo, Vector128<uint> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.UInt32>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663689, Name := System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector256<long> vconcat(Vector128<long> lo, Vector128<long> hi)
// AggressiveInlining
Vector256<long> vconcat(Vector128<long> lo, Vector128<long> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Int64> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663690, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector256<ulong> vconcat(Vector128<ulong> lo, Vector128<ulong> hi)
// AggressiveInlining
Vector256<ulong> vconcat(Vector128<ulong> lo, Vector128<ulong> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.UInt64>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> System.Runtime.Intrinsics.X86.Avx2::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663691, Name := System.Runtime.Intrinsics.Vector256`1<System.Single> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>)
// Vector256<float> vconcat(Vector128<float> lo, Vector128<float> hi)
// AggressiveInlining
Vector256<float> vconcat(Vector128<float> lo, Vector128<float> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Single>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Single> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Single> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Single>,System.Runtime.Intrinsics.Vector128`1<System.Single>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663692, Name := System.Runtime.Intrinsics.Vector256`1<System.Double> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>)
// Vector256<double> vconcat(Vector128<double> lo, Vector128<double> hi)
// AggressiveInlining
Vector256<double> vconcat(Vector128<double> lo, Vector128<double> hi)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Double>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: ldc.i4.0
    IL_000B: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Byte)
    IL_0010: ldarg.1
    IL_0011: ldc.i4.1
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.Double> System.Runtime.Intrinsics.X86.Avx::InsertVector128(System.Runtime.Intrinsics.Vector256`1<System.Double>,System.Runtime.Intrinsics.Vector128`1<System.Double>,System.Byte)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
