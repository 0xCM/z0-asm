// System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
// Vector128<uint> vnegate(Vector128<uint> src)
// AggressiveInlining
Vector128<uint> vnegate(Vector128<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.VPattern::vones<System.UInt32>(Z0.N128,System.UInt32)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
// Vector128<long> vnegate(Vector128<long> src)
// AggressiveInlining
Vector128<long> vnegate(Vector128<long> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector128`1<System.Int64>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.Int64>,System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
// Vector128<ulong> vnegate(Vector128<ulong> src)
// AggressiveInlining
Vector128<ulong> vnegate(Vector128<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: conv.i8
    IL_000D: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.VPattern::vones<System.UInt64>(Z0.N128,System.UInt64)
    IL_0012: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vnegate(Vector256<sbyte> src)
// AggressiveInlining
Vector256<sbyte> vnegate(Vector256<sbyte> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.SByte>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<byte> vnegate(Vector256<byte> src)
// AggressiveInlining
Vector256<byte> vnegate(Vector256<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0006: call Z0.N256 zfunc::get_n256()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.VPattern::vones<System.Byte>(Z0.N256,System.Byte)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int16>)
// Vector256<short> vnegate(Vector256<short> src)
// AggressiveInlining
Vector256<short> vnegate(Vector256<short> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int16>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Int16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int16>,System.Runtime.Intrinsics.Vector256`1<System.Int16>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
// Vector256<ushort> vnegate(Vector256<ushort> src)
// AggressiveInlining
Vector256<ushort> vnegate(Vector256<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0006: call Z0.N256 zfunc::get_n256()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.VPattern::vones<System.UInt16>(Z0.N256,System.UInt16)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vnegate(Vector256<int> src)
// AggressiveInlining
Vector256<int> vnegate(Vector256<int> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int32>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
// Vector256<uint> vnegate(Vector256<uint> src)
// AggressiveInlining
Vector256<uint> vnegate(Vector256<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0006: call Z0.N256 zfunc::get_n256()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.VPattern::vones<System.UInt32>(Z0.N256,System.UInt32)
    IL_0011: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.Int64>)
// Vector256<long> vnegate(Vector256<long> src)
// AggressiveInlining
Vector256<long> vnegate(Vector256<long> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector256`1<System.Int64>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector256`1<System.Int64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.Int64>,System.Runtime.Intrinsics.Vector256`1<System.Int64>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
// Vector256<ulong> vnegate(Vector256<ulong> src)
// AggressiveInlining
Vector256<ulong> vnegate(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0006: call Z0.N256 zfunc::get_n256()
    IL_000B: ldc.i4.0
    IL_000C: conv.i8
    IL_000D: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.VPattern::vones<System.UInt64>(Z0.N256,System.UInt64)
    IL_0012: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vnegate(Vector128<sbyte> src)
// AggressiveInlining
Vector128<sbyte> vnegate(Vector128<sbyte> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector128`1<System.SByte>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vnegate(Vector128<byte> src)
// AggressiveInlining
Vector128<byte> vnegate(Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.VPattern::vones<System.Byte>(Z0.N128,System.Byte)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<short> vnegate(Vector128<short> src)
// AggressiveInlining
Vector128<short> vnegate(Vector128<short> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector128`1<System.Int16>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
// Vector128<ushort> vnegate(Vector128<ushort> src)
// AggressiveInlining
Vector128<ushort> vnegate(Vector128<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0006: call Z0.N128 zfunc::get_n128()
    IL_000B: ldc.i4.0
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.VPattern::vones<System.UInt16>(Z0.N128,System.UInt16)
    IL_0011: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0016: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vnegate(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vnegate(Vector128<int> src)
// AggressiveInlining
Vector128<int> vnegate(Vector128<int> src)
{
    IL_0000: ldloca.s V_0
    IL_0002: initobj System.Runtime.Intrinsics.Vector128`1<System.Int32>
    IL_0008: ldloc.0
    IL_0009: ldarg.0
    IL_000A: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vsub(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000F: ret
}
------------------------------------------------------------------------------------------------------------------------
