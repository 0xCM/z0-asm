// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<byte>(byte src, int pos)
// AggressiveInlining
bit testbit<byte>(byte src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<sbyte>(sbyte src, int pos)
// AggressiveInlining
bit testbit<sbyte>(sbyte src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<ushort>(ushort src, int pos)
// AggressiveInlining
bit testbit<ushort>(ushort src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<Int16>(Int16 src, int pos)
// AggressiveInlining
bit testbit<Int16>(Int16 src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<uint>(uint src, int pos)
// AggressiveInlining
bit testbit<uint>(uint src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<int>(int src, int pos)
// AggressiveInlining
bit testbit<int>(int src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<ulong>(ulong src, int pos)
// AggressiveInlining
bit testbit<ulong>(ulong src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663680, Name := Z0.bit Z0.gbits::testbit<T>(T,System.Int32)
// bit testbit<long>(long src, int pos)
// AggressiveInlining
bit testbit<long>(long src, int pos)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0028
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call Z0.bit Z0.bit::test(System.Byte,System.Int32)
    IL_0027: ret
    IL_0028: ldtoken T
    IL_002D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0032: ldtoken System.UInt16
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0041: brfalse.s IL_0050
    IL_0043: ldarg.0
    IL_0044: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0049: ldarg.1
    IL_004A: call Z0.bit Z0.bit::test(System.UInt16,System.Int32)
    IL_004F: ret
    IL_0050: ldtoken T
    IL_0055: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005A: ldtoken System.UInt32
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0069: brfalse.s IL_0078
    IL_006B: ldarg.0
    IL_006C: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0071: ldarg.1
    IL_0072: call Z0.bit Z0.bit::test(System.UInt32,System.Int32)
    IL_0077: ret
    IL_0078: ldtoken T
    IL_007D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0082: ldtoken System.UInt64
    IL_0087: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0091: brfalse.s IL_00A0
    IL_0093: ldarg.0
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: ldarg.1
    IL_009A: call Z0.bit Z0.bit::test(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldarg.0
    IL_00A1: ldarg.1
    IL_00A2: call Z0.bit Z0.gbits::testbit2_i<T>(T,System.Int32)
    IL_00A7: ret
}
------------------------------------------------------------------------------------------------------------------------
