// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<byte> vmerge<byte>(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector256<byte> vmerge<byte>(Vector128<byte> x, Vector128<byte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<sbyte> vmerge<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
// AggressiveInlining
Vector256<sbyte> vmerge<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<ushort> vmerge<ushort>(Vector128<ushort> x, Vector128<ushort> y)
// AggressiveInlining
Vector256<ushort> vmerge<ushort>(Vector128<ushort> x, Vector128<ushort> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<short> vmerge<short>(Vector128<short> x, Vector128<short> y)
// AggressiveInlining
Vector256<short> vmerge<short>(Vector128<short> x, Vector128<short> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<uint> vmerge<uint>(Vector128<uint> x, Vector128<uint> y)
// AggressiveInlining
Vector256<uint> vmerge<uint>(Vector128<uint> x, Vector128<uint> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<int> vmerge<int>(Vector128<int> x, Vector128<int> y)
// AggressiveInlining
Vector256<int> vmerge<int>(Vector128<int> x, Vector128<int> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<ulong> vmerge<ulong>(Vector128<ulong> x, Vector128<ulong> y)
// AggressiveInlining
Vector256<ulong> vmerge<ulong>(Vector128<ulong> x, Vector128<ulong> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<long> vmerge<long>(Vector128<long> x, Vector128<long> y)
// AggressiveInlining
Vector256<long> vmerge<long>(Vector128<long> x, Vector128<long> y)
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
    IL_006E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
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
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 37
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<byte> vmerge<byte>(Vector256<byte> x, Vector256<byte> y)
// AggressiveInlining
Vector512<byte> vmerge<byte>(Vector256<byte> x, Vector256<byte> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<sbyte> vmerge<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y)
// AggressiveInlining
Vector512<sbyte> vmerge<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<ushort> vmerge<ushort>(Vector256<ushort> x, Vector256<ushort> y)
// AggressiveInlining
Vector512<ushort> vmerge<ushort>(Vector256<ushort> x, Vector256<ushort> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<short> vmerge<short>(Vector256<short> x, Vector256<short> y)
// AggressiveInlining
Vector512<short> vmerge<short>(Vector256<short> x, Vector256<short> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<uint> vmerge<uint>(Vector256<uint> x, Vector256<uint> y)
// AggressiveInlining
Vector512<uint> vmerge<uint>(Vector256<uint> x, Vector256<uint> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<int> vmerge<int>(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector512<int> vmerge<int>(Vector256<int> x, Vector256<int> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<ulong> vmerge<ulong>(Vector256<ulong> x, Vector256<ulong> y)
// AggressiveInlining
Vector512<ulong> vmerge<ulong>(Vector256<ulong> x, Vector256<ulong> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Vector512`1<T> Z0.ginx::vmerge<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector512<long> vmerge<long>(Vector256<long> x, Vector256<long> y)
// AggressiveInlining
Vector512<long> vmerge<long>(Vector256<long> x, Vector256<long> y)
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
    IL_006E: call Z0.Vector512`1<T> Z0.ginx::vmerge_u<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
    IL_00E2: call Z0.Vector512`1<T> Z0.ginx::vmerge_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ret
    IL_00E8: ldstr "vmerge"
    IL_00ED: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\parts\\merge.g.cs"
    IL_00F2: ldc.i4.s 60
    IL_00F4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00F9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00FE: throw
}
------------------------------------------------------------------------------------------------------------------------
