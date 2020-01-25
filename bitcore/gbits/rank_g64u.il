// Id := 100663659, Name := System.UInt32 Z0.gbits::rank<T>(T,System.Int32)
// uint rank<ulong>(ulong src, int pos)
// AggressiveInlining
uint rank<ulong>(ulong src, int pos)
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
    IL_0022: call System.UInt32 Z0.Bits::rank(System.Byte,System.Int32)
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
    IL_004A: call System.UInt32 Z0.Bits::rank(System.UInt16,System.Int32)
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
    IL_0072: call System.UInt32 Z0.Bits::rank(System.UInt32,System.Int32)
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
    IL_009A: call System.UInt32 Z0.Bits::rank(System.UInt64,System.Int32)
    IL_009F: ret
    IL_00A0: ldstr "rank"
    IL_00A5: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rank.g.cs"
    IL_00AA: ldc.i4.s 35
    IL_00AC: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B1: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00B6: throw
}
