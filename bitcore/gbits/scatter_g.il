// T Z0.gbits::scatter<T>(T,T)
// byte scatter<byte>(byte src, byte mask)
// AggressiveInlining
byte scatter<byte>(byte src, byte mask)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0032
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.As::uint8<T>(T)
    IL_0027: call System.Byte Z0.Bits::scatter(System.Byte,System.Byte)
    IL_002C: call T Z0.As::generic<T>(System.Byte)
    IL_0031: ret
    IL_0032: ldtoken T
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: ldtoken System.UInt16
    IL_0041: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0046: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004B: brfalse.s IL_0064
    IL_004D: ldarg.0
    IL_004E: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0053: ldarg.1
    IL_0054: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0059: call System.UInt16 Z0.Bits::scatter(System.UInt16,System.UInt16)
    IL_005E: call T Z0.As::generic<T>(System.UInt16)
    IL_0063: ret
    IL_0064: ldtoken T
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: ldtoken System.UInt32
    IL_0073: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0078: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007D: brfalse.s IL_0096
    IL_007F: ldarg.0
    IL_0080: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0085: ldarg.1
    IL_0086: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008B: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0090: call T Z0.As::generic<T>(System.UInt32)
    IL_0095: ret
    IL_0096: ldtoken T
    IL_009B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A0: ldtoken System.UInt64
    IL_00A5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00AF: brfalse.s IL_00C8
    IL_00B1: ldarg.0
    IL_00B2: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00B7: ldarg.1
    IL_00B8: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BD: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_00C2: call T Z0.As::generic<T>(System.UInt64)
    IL_00C7: ret
    IL_00C8: ldstr "scatter"
    IL_00CD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\scatter.g.cs"
    IL_00D2: ldc.i4.s 36
    IL_00D4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00D9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00DE: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::scatter<T>(T,T)
// ushort scatter<ushort>(ushort src, ushort mask)
// AggressiveInlining
ushort scatter<ushort>(ushort src, ushort mask)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0032
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.As::uint8<T>(T)
    IL_0027: call System.Byte Z0.Bits::scatter(System.Byte,System.Byte)
    IL_002C: call T Z0.As::generic<T>(System.Byte)
    IL_0031: ret
    IL_0032: ldtoken T
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: ldtoken System.UInt16
    IL_0041: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0046: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004B: brfalse.s IL_0064
    IL_004D: ldarg.0
    IL_004E: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0053: ldarg.1
    IL_0054: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0059: call System.UInt16 Z0.Bits::scatter(System.UInt16,System.UInt16)
    IL_005E: call T Z0.As::generic<T>(System.UInt16)
    IL_0063: ret
    IL_0064: ldtoken T
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: ldtoken System.UInt32
    IL_0073: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0078: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007D: brfalse.s IL_0096
    IL_007F: ldarg.0
    IL_0080: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0085: ldarg.1
    IL_0086: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008B: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0090: call T Z0.As::generic<T>(System.UInt32)
    IL_0095: ret
    IL_0096: ldtoken T
    IL_009B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A0: ldtoken System.UInt64
    IL_00A5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00AF: brfalse.s IL_00C8
    IL_00B1: ldarg.0
    IL_00B2: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00B7: ldarg.1
    IL_00B8: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BD: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_00C2: call T Z0.As::generic<T>(System.UInt64)
    IL_00C7: ret
    IL_00C8: ldstr "scatter"
    IL_00CD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\scatter.g.cs"
    IL_00D2: ldc.i4.s 36
    IL_00D4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00D9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00DE: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::scatter<T>(T,T)
// uint scatter<uint>(uint src, uint mask)
// AggressiveInlining
uint scatter<uint>(uint src, uint mask)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0032
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.As::uint8<T>(T)
    IL_0027: call System.Byte Z0.Bits::scatter(System.Byte,System.Byte)
    IL_002C: call T Z0.As::generic<T>(System.Byte)
    IL_0031: ret
    IL_0032: ldtoken T
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: ldtoken System.UInt16
    IL_0041: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0046: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004B: brfalse.s IL_0064
    IL_004D: ldarg.0
    IL_004E: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0053: ldarg.1
    IL_0054: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0059: call System.UInt16 Z0.Bits::scatter(System.UInt16,System.UInt16)
    IL_005E: call T Z0.As::generic<T>(System.UInt16)
    IL_0063: ret
    IL_0064: ldtoken T
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: ldtoken System.UInt32
    IL_0073: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0078: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007D: brfalse.s IL_0096
    IL_007F: ldarg.0
    IL_0080: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0085: ldarg.1
    IL_0086: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008B: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0090: call T Z0.As::generic<T>(System.UInt32)
    IL_0095: ret
    IL_0096: ldtoken T
    IL_009B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A0: ldtoken System.UInt64
    IL_00A5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00AF: brfalse.s IL_00C8
    IL_00B1: ldarg.0
    IL_00B2: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00B7: ldarg.1
    IL_00B8: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BD: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_00C2: call T Z0.As::generic<T>(System.UInt64)
    IL_00C7: ret
    IL_00C8: ldstr "scatter"
    IL_00CD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\scatter.g.cs"
    IL_00D2: ldc.i4.s 36
    IL_00D4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00D9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00DE: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::scatter<T>(T,T)
// ulong scatter<ulong>(ulong src, ulong mask)
// AggressiveInlining
ulong scatter<ulong>(ulong src, ulong mask)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0032
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.As::uint8<T>(T)
    IL_0027: call System.Byte Z0.Bits::scatter(System.Byte,System.Byte)
    IL_002C: call T Z0.As::generic<T>(System.Byte)
    IL_0031: ret
    IL_0032: ldtoken T
    IL_0037: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003C: ldtoken System.UInt16
    IL_0041: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0046: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004B: brfalse.s IL_0064
    IL_004D: ldarg.0
    IL_004E: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0053: ldarg.1
    IL_0054: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0059: call System.UInt16 Z0.Bits::scatter(System.UInt16,System.UInt16)
    IL_005E: call T Z0.As::generic<T>(System.UInt16)
    IL_0063: ret
    IL_0064: ldtoken T
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: ldtoken System.UInt32
    IL_0073: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0078: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007D: brfalse.s IL_0096
    IL_007F: ldarg.0
    IL_0080: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0085: ldarg.1
    IL_0086: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008B: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0090: call T Z0.As::generic<T>(System.UInt32)
    IL_0095: ret
    IL_0096: ldtoken T
    IL_009B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A0: ldtoken System.UInt64
    IL_00A5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00AF: brfalse.s IL_00C8
    IL_00B1: ldarg.0
    IL_00B2: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00B7: ldarg.1
    IL_00B8: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BD: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_00C2: call T Z0.As::generic<T>(System.UInt64)
    IL_00C7: ret
    IL_00C8: ldstr "scatter"
    IL_00CD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\scatter.g.cs"
    IL_00D2: ldc.i4.s 36
    IL_00D4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00D9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00DE: throw
}
------------------------------------------------------------------------------------------------------------------------
