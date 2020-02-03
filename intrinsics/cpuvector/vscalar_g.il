// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<byte> vscalar<byte>(N128 w, byte src)
// AggressiveInlining
Vector128<byte> vscalar<byte>(N128 w, byte src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<sbyte> vscalar<sbyte>(N128 w, sbyte src)
// AggressiveInlining
Vector128<sbyte> vscalar<sbyte>(N128 w, sbyte src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<ushort> vscalar<ushort>(N128 w, ushort src)
// AggressiveInlining
Vector128<ushort> vscalar<ushort>(N128 w, ushort src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<short> vscalar<short>(N128 w, short src)
// AggressiveInlining
Vector128<short> vscalar<short>(N128 w, short src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<uint> vscalar<uint>(N128 w, uint src)
// AggressiveInlining
Vector128<uint> vscalar<uint>(N128 w, uint src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<int> vscalar<int>(N128 w, int src)
// AggressiveInlining
Vector128<int> vscalar<int>(N128 w, int src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<ulong> vscalar<ulong>(N128 w, ulong src)
// AggressiveInlining
Vector128<ulong> vscalar<ulong>(N128 w, ulong src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<long> vscalar<long>(N128 w, long src)
// AggressiveInlining
Vector128<long> vscalar<long>(N128 w, long src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<float> vscalar<float>(N128 w, float src)
// AggressiveInlining
Vector128<float> vscalar<float>(N128 w, float src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar<T>(Z0.N128,T)
// Vector128<double> vscalar<double>(N128 w, double src)
// AggressiveInlining
Vector128<double> vscalar<double>(N128 w, double src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N128,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N128,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N128,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<byte> vscalar<byte>(N256 n, byte src)
// AggressiveInlining
Vector256<byte> vscalar<byte>(N256 n, byte src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<sbyte> vscalar<sbyte>(N256 n, sbyte src)
// AggressiveInlining
Vector256<sbyte> vscalar<sbyte>(N256 n, sbyte src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<ushort> vscalar<ushort>(N256 n, ushort src)
// AggressiveInlining
Vector256<ushort> vscalar<ushort>(N256 n, ushort src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<short> vscalar<short>(N256 n, short src)
// AggressiveInlining
Vector256<short> vscalar<short>(N256 n, short src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<uint> vscalar<uint>(N256 n, uint src)
// AggressiveInlining
Vector256<uint> vscalar<uint>(N256 n, uint src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<int> vscalar<int>(N256 n, int src)
// AggressiveInlining
Vector256<int> vscalar<int>(N256 n, int src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<ulong> vscalar<ulong>(N256 n, ulong src)
// AggressiveInlining
Vector256<ulong> vscalar<ulong>(N256 n, ulong src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<long> vscalar<long>(N256 n, long src)
// AggressiveInlining
Vector256<long> vscalar<long>(N256 n, long src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<float> vscalar<float>(N256 n, float src)
// AggressiveInlining
Vector256<float> vscalar<float>(N256 n, float src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar<T>(Z0.N256,T)
// Vector256<double> vscalar<double>(N256 n, double src)
// AggressiveInlining
Vector256<double> vscalar<double>(N256 n, double src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_006C
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_006C
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brtrue.s IL_006C
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt64
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0074
    IL_006C: ldarg.0
    IL_006D: ldarg.1
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_u<T>(Z0.N256,T)
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.SByte
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brtrue.s IL_00E0
    IL_008F: ldtoken T
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: ldtoken System.Int16
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A8: brtrue.s IL_00E0
    IL_00AA: ldtoken T
    IL_00AF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B4: ldtoken System.Int32
    IL_00B9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C3: brtrue.s IL_00E0
    IL_00C5: ldtoken T
    IL_00CA: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CF: ldtoken System.Int64
    IL_00D4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D9: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DE: brfalse.s IL_00E8
    IL_00E0: ldarg.0
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_i<T>(Z0.N256,T)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vscalar_f<T>(Z0.N256,T)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
