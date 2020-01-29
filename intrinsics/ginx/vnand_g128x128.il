// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<byte> vnand<byte>(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector128<byte> vnand<byte>(Vector128<byte> x, Vector128<byte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> vnand<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector128<sbyte> vnand<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> vnand<ushort>(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector128<ushort> vnand<ushort>(Vector128<ushort> x, Vector128<ushort> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<short> vnand<short>(Vector128<short> x, Vector128<short> y)
// AggressiveInlining
Vector128<short> vnand<short>(Vector128<short> x, Vector128<short> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<uint> vnand<uint>(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector128<uint> vnand<uint>(Vector128<uint> x, Vector128<uint> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> vnand<int>(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector128<int> vnand<int>(Vector128<int> x, Vector128<int> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> vnand<ulong>(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector128<ulong> vnand<ulong>(Vector128<ulong> x, Vector128<ulong> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> vnand<long>(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector128<long> vnand<long>(Vector128<long> x, Vector128<long> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<float> vnand<float>(Vector128<float> x, Vector128<float> y)
// AggressiveInlining
Vector128<float> vnand<float>(Vector128<float> x, Vector128<float> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665295, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<double> vnand<double>(Vector128<double> x, Vector128<double> y)
// AggressiveInlining
Vector128<double> vnand<double>(Vector128<double> x, Vector128<double> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vnand_f<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
------------------------------------------------------------------------------------------------------------------------
