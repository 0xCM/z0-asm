// Id := 100663698, Name := T Z0.gbits::zerohi<T>(T,System.Int32)
// byte zerohi<byte>(byte src, int index)
// AggressiveInlining
byte zerohi<byte>(byte src, int index)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::zerohi(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::zerohi(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::zerohi(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::zerohi(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "zerohi"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\zerohi.g.cs"
    IL_00BE: ldc.i4.s 35
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663698, Name := T Z0.gbits::zerohi<T>(T,System.Int32)
// ushort zerohi<ushort>(ushort src, int index)
// AggressiveInlining
ushort zerohi<ushort>(ushort src, int index)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::zerohi(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::zerohi(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::zerohi(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::zerohi(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "zerohi"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\zerohi.g.cs"
    IL_00BE: ldc.i4.s 35
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663698, Name := T Z0.gbits::zerohi<T>(T,System.Int32)
// uint zerohi<uint>(uint src, int index)
// AggressiveInlining
uint zerohi<uint>(uint src, int index)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::zerohi(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::zerohi(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::zerohi(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::zerohi(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "zerohi"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\zerohi.g.cs"
    IL_00BE: ldc.i4.s 35
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663698, Name := T Z0.gbits::zerohi<T>(T,System.Int32)
// ulong zerohi<ulong>(ulong src, int index)
// AggressiveInlining
ulong zerohi<ulong>(ulong src, int index)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::zerohi(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::zerohi(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::zerohi(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::zerohi(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "zerohi"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\zerohi.g.cs"
    IL_00BE: ldc.i4.s 35
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
