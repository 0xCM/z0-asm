// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<byte>(Vector128<byte> src)
// AggressiveInlining
bit vnonz<byte>(Vector128<byte> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<sbyte>(Vector128<sbyte> src)
// AggressiveInlining
bit vnonz<sbyte>(Vector128<sbyte> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<ushort>(Vector128<ushort> src)
// AggressiveInlining
bit vnonz<ushort>(Vector128<ushort> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<short>(Vector128<short> src)
// AggressiveInlining
bit vnonz<short>(Vector128<short> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<uint>(Vector128<uint> src)
// AggressiveInlining
bit vnonz<uint>(Vector128<uint> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<int>(Vector128<int> src)
// AggressiveInlining
bit vnonz<int>(Vector128<int> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<ulong>(Vector128<ulong> src)
// AggressiveInlining
bit vnonz<ulong>(Vector128<ulong> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<long>(Vector128<long> src)
// AggressiveInlining
bit vnonz<long>(Vector128<long> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<float>(Vector128<float> src)
// AggressiveInlining
bit vnonz<float>(Vector128<float> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// bit vnonz<double>(Vector128<double> src)
// AggressiveInlining
bit vnonz<double>(Vector128<double> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<byte>(Vector256<byte> src)
// AggressiveInlining
bit vnonz<byte>(Vector256<byte> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<sbyte>(Vector256<sbyte> src)
// AggressiveInlining
bit vnonz<sbyte>(Vector256<sbyte> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<ushort>(Vector256<ushort> src)
// AggressiveInlining
bit vnonz<ushort>(Vector256<ushort> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<short>(Vector256<short> src)
// AggressiveInlining
bit vnonz<short>(Vector256<short> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<uint>(Vector256<uint> src)
// AggressiveInlining
bit vnonz<uint>(Vector256<uint> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<int>(Vector256<int> src)
// AggressiveInlining
bit vnonz<int>(Vector256<int> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<ulong>(Vector256<ulong> src)
// AggressiveInlining
bit vnonz<ulong>(Vector256<ulong> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<long>(Vector256<long> src)
// AggressiveInlining
bit vnonz<long>(Vector256<long> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<float>(Vector256<float> src)
// AggressiveInlining
bit vnonz<float>(Vector256<float> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// bit vnonz<double>(Vector256<double> src)
// AggressiveInlining
bit vnonz<double>(Vector256<double> src)
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
    IL_006A: brfalse.s IL_0073
    IL_006C: ldarg.0
    IL_006D: call Z0.bit Z0.ginx::vnonz_u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldtoken T
    IL_0078: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007D: ldtoken System.SByte
    IL_0082: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0087: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008C: brtrue.s IL_00DF
    IL_008E: ldtoken T
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: ldtoken System.Int16
    IL_009D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A7: brtrue.s IL_00DF
    IL_00A9: ldtoken T
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: ldtoken System.Int32
    IL_00B8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00BD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C2: brtrue.s IL_00DF
    IL_00C4: ldtoken T
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: ldtoken System.Int64
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DD: brfalse.s IL_00E6
    IL_00DF: ldarg.0
    IL_00E0: call Z0.bit Z0.ginx::vnonz_i<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E5: ret
    IL_00E6: ldarg.0
    IL_00E7: call Z0.bit Z0.ginx::vnonz_f<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00EC: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<byte>(in Vector512<byte> src)
// AggressiveInlining
bit vnonz<byte>(in Vector512<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<sbyte>(in Vector512<sbyte> src)
// AggressiveInlining
bit vnonz<sbyte>(in Vector512<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<ushort>(in Vector512<ushort> src)
// AggressiveInlining
bit vnonz<ushort>(in Vector512<ushort> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<short>(in Vector512<short> src)
// AggressiveInlining
bit vnonz<short>(in Vector512<short> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<uint>(in Vector512<uint> src)
// AggressiveInlining
bit vnonz<uint>(in Vector512<uint> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<int>(in Vector512<int> src)
// AggressiveInlining
bit vnonz<int>(in Vector512<int> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<ulong>(in Vector512<ulong> src)
// AggressiveInlining
bit vnonz<ulong>(in Vector512<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<long>(in Vector512<long> src)
// AggressiveInlining
bit vnonz<long>(in Vector512<long> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<float>(in Vector512<float> src)
// AggressiveInlining
bit vnonz<float>(in Vector512<float> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.bit Z0.ginx::vnonz<T>(Z0.Vector512`1<T>&)
// bit vnonz<double>(in Vector512<double> src)
// AggressiveInlining
bit vnonz<double>(in Vector512<double> src)
{
    IL_0000: ldarg.0
    IL_0001: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Lo
    IL_0006: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_000B: stloc.0
    IL_000C: ldloc.0
    IL_000D: call System.Boolean Z0.bit::op_True(Z0.bit)
    IL_0012: brtrue.s IL_0026
    IL_0014: ldloc.0
    IL_0015: ldarg.0
    IL_0016: ldfld System.Runtime.Intrinsics.Vector256`1<T> Z0.Vector512`1<T>::Hi
    IL_001B: call Z0.bit Z0.ginx::vnonz<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0020: call Z0.bit Z0.bit::op_BitwiseOr(Z0.bit,Z0.bit)
    IL_0025: ret
    IL_0026: ldloc.0
    IL_0027: ret
}
------------------------------------------------------------------------------------------------------------------------
