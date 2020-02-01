// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<byte> veq<byte>(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> veq<byte>(Vector128<byte> x, Vector128<byte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> veq<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<sbyte> veq<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> veq<ushort>(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> veq<ushort>(Vector128<ushort> x, Vector128<ushort> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<short> veq<short>(Vector128<short> x, Vector128<short> y)
// AggressiveInlining
Vector128<short> veq<short>(Vector128<short> x, Vector128<short> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<uint> veq<uint>(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> veq<uint>(Vector128<uint> x, Vector128<uint> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> veq<int>(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> veq<int>(Vector128<int> x, Vector128<int> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> veq<ulong>(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector128<ulong> veq<ulong>(Vector128<ulong> x, Vector128<ulong> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> veq<long>(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> veq<long>(Vector128<long> x, Vector128<long> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<float> veq<float>(Vector128<float> x, Vector128<float> y)
// AggressiveInlining
Vector128<float> veq<float>(Vector128<float> x, Vector128<float> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<double> veq<double>(Vector128<double> x, Vector128<double> y)
// AggressiveInlining
Vector128<double> veq<double>(Vector128<double> x, Vector128<double> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> veq<byte>(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector256<byte> veq<byte>(Vector256<byte> x, Vector256<byte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> veq<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector256<sbyte> veq<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> veq<ushort>(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector256<ushort> veq<ushort>(Vector256<ushort> x, Vector256<ushort> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<short> veq<short>(Vector256<short> x, Vector256<short> y)
// AggressiveInlining
Vector256<short> veq<short>(Vector256<short> x, Vector256<short> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> veq<uint>(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector256<uint> veq<uint>(Vector256<uint> x, Vector256<uint> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> veq<int>(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> veq<int>(Vector256<int> x, Vector256<int> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> veq<ulong>(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector256<ulong> veq<ulong>(Vector256<ulong> x, Vector256<ulong> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> veq<long>(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector256<long> veq<long>(Vector256<long> x, Vector256<long> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<float> veq<float>(Vector256<float> x, Vector256<float> y)
// AggressiveInlining
Vector256<float> veq<float>(Vector256<float> x, Vector256<float> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<double> veq<double>(Vector256<double> x, Vector256<double> y)
// AggressiveInlining
Vector256<double> veq<double>(Vector256<double> x, Vector256<double> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq_f<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<byte> veq<byte>(in Vector512<byte> x, in Vector512<byte> y)
// AggressiveInlining
Vector512<byte> veq<byte>(in Vector512<byte> x, in Vector512<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<sbyte> veq<sbyte>(in Vector512<sbyte> x, in Vector512<sbyte> y)
// AggressiveInlining
Vector512<sbyte> veq<sbyte>(in Vector512<sbyte> x, in Vector512<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<ushort> veq<ushort>(in Vector512<ushort> x, in Vector512<ushort> y)
// AggressiveInlining
Vector512<ushort> veq<ushort>(in Vector512<ushort> x, in Vector512<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<short> veq<short>(in Vector512<short> x, in Vector512<short> y)
// AggressiveInlining
Vector512<short> veq<short>(in Vector512<short> x, in Vector512<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<uint> veq<uint>(in Vector512<uint> x, in Vector512<uint> y)
// AggressiveInlining
Vector512<uint> veq<uint>(in Vector512<uint> x, in Vector512<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<int> veq<int>(in Vector512<int> x, in Vector512<int> y)
// AggressiveInlining
Vector512<int> veq<int>(in Vector512<int> x, in Vector512<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<ulong> veq<ulong>(in Vector512<ulong> x, in Vector512<ulong> y)
// AggressiveInlining
Vector512<ulong> veq<ulong>(in Vector512<ulong> x, in Vector512<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<long> veq<long>(in Vector512<long> x, in Vector512<long> y)
// AggressiveInlining
Vector512<long> veq<long>(in Vector512<long> x, in Vector512<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<float> veq<float>(in Vector512<float> x, in Vector512<float> y)
// AggressiveInlining
Vector512<float> veq<float>(in Vector512<float> x, in Vector512<float> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::veq<T>(Z0.Vector512`1<T>&,Z0.Vector512`1<T>&)
// Vector512<double> veq<double>(in Vector512<double> x, in Vector512<double> y)
// AggressiveInlining
Vector512<double> veq<double>(in Vector512<double> x, in Vector512<double> y)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: ldarg.1
    IL_0007: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ldarg.0
    IL_0012: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_0017: ldarg.1
    IL_0018: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::veq<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: newobj System.Void System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: call Z0.Vector512`1<T> Z0.Vector512`1<T>::op_Implicit(System.ValueTuple`2<System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>>)
    IL_002C: ret
}
------------------------------------------------------------------------------------------------------------------------
