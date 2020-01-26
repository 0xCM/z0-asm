// Id := 100663647, Name := T Z0.gbits::mix<T>(Z0.N0,T,T)
// byte mix<byte>(N0 parity, byte x, byte y)
// AggressiveInlining
byte mix<byte>(N0 parity, byte x, byte y)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0033
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: call System.Byte Z0.As::uint8<T>(T)
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.As::uint8<T>(T)
    IL_0028: call System.Byte Z0.Bits::mix(Z0.N0,System.Byte,System.Byte)
    IL_002D: call T Z0.As::generic<T>(System.Byte)
    IL_0032: ret
    IL_0033: ldtoken T
    IL_0038: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003D: ldtoken System.UInt16
    IL_0042: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0047: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004C: brfalse.s IL_0066
    IL_004E: ldarg.0
    IL_004F: ldarg.1
    IL_0050: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0055: ldarg.2
    IL_0056: call System.UInt16 Z0.As::uint16<T>(T)
    IL_005B: call System.UInt16 Z0.Bits::mix(Z0.N0,System.UInt16,System.UInt16)
    IL_0060: call T Z0.As::generic<T>(System.UInt16)
    IL_0065: ret
    IL_0066: ldtoken T
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: ldtoken System.UInt32
    IL_0075: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007F: brfalse.s IL_0099
    IL_0081: ldarg.0
    IL_0082: ldarg.1
    IL_0083: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0088: ldarg.2
    IL_0089: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008E: call System.UInt32 Z0.Bits::mix(Z0.N0,System.UInt32,System.UInt32)
    IL_0093: call T Z0.As::generic<T>(System.UInt32)
    IL_0098: ret
    IL_0099: ldtoken T
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: ldtoken System.UInt64
    IL_00A8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B2: brfalse.s IL_00CC
    IL_00B4: ldarg.0
    IL_00B5: ldarg.1
    IL_00B6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BB: ldarg.2
    IL_00BC: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00C1: call System.UInt64 Z0.Bits::mix(Z0.N0,System.UInt64,System.UInt64)
    IL_00C6: call T Z0.As::generic<T>(System.UInt64)
    IL_00CB: ret
    IL_00CC: ldstr "mix"
    IL_00D1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\mix.g.cs"
    IL_00D6: ldc.i4.s 37
    IL_00D8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00DD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E2: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663647, Name := T Z0.gbits::mix<T>(Z0.N0,T,T)
// ushort mix<ushort>(N0 parity, ushort x, ushort y)
// AggressiveInlining
ushort mix<ushort>(N0 parity, ushort x, ushort y)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0033
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: call System.Byte Z0.As::uint8<T>(T)
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.As::uint8<T>(T)
    IL_0028: call System.Byte Z0.Bits::mix(Z0.N0,System.Byte,System.Byte)
    IL_002D: call T Z0.As::generic<T>(System.Byte)
    IL_0032: ret
    IL_0033: ldtoken T
    IL_0038: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003D: ldtoken System.UInt16
    IL_0042: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0047: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004C: brfalse.s IL_0066
    IL_004E: ldarg.0
    IL_004F: ldarg.1
    IL_0050: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0055: ldarg.2
    IL_0056: call System.UInt16 Z0.As::uint16<T>(T)
    IL_005B: call System.UInt16 Z0.Bits::mix(Z0.N0,System.UInt16,System.UInt16)
    IL_0060: call T Z0.As::generic<T>(System.UInt16)
    IL_0065: ret
    IL_0066: ldtoken T
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: ldtoken System.UInt32
    IL_0075: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007F: brfalse.s IL_0099
    IL_0081: ldarg.0
    IL_0082: ldarg.1
    IL_0083: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0088: ldarg.2
    IL_0089: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008E: call System.UInt32 Z0.Bits::mix(Z0.N0,System.UInt32,System.UInt32)
    IL_0093: call T Z0.As::generic<T>(System.UInt32)
    IL_0098: ret
    IL_0099: ldtoken T
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: ldtoken System.UInt64
    IL_00A8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B2: brfalse.s IL_00CC
    IL_00B4: ldarg.0
    IL_00B5: ldarg.1
    IL_00B6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BB: ldarg.2
    IL_00BC: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00C1: call System.UInt64 Z0.Bits::mix(Z0.N0,System.UInt64,System.UInt64)
    IL_00C6: call T Z0.As::generic<T>(System.UInt64)
    IL_00CB: ret
    IL_00CC: ldstr "mix"
    IL_00D1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\mix.g.cs"
    IL_00D6: ldc.i4.s 37
    IL_00D8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00DD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E2: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663647, Name := T Z0.gbits::mix<T>(Z0.N0,T,T)
// uint mix<uint>(N0 parity, uint x, uint y)
// AggressiveInlining
uint mix<uint>(N0 parity, uint x, uint y)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0033
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: call System.Byte Z0.As::uint8<T>(T)
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.As::uint8<T>(T)
    IL_0028: call System.Byte Z0.Bits::mix(Z0.N0,System.Byte,System.Byte)
    IL_002D: call T Z0.As::generic<T>(System.Byte)
    IL_0032: ret
    IL_0033: ldtoken T
    IL_0038: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003D: ldtoken System.UInt16
    IL_0042: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0047: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004C: brfalse.s IL_0066
    IL_004E: ldarg.0
    IL_004F: ldarg.1
    IL_0050: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0055: ldarg.2
    IL_0056: call System.UInt16 Z0.As::uint16<T>(T)
    IL_005B: call System.UInt16 Z0.Bits::mix(Z0.N0,System.UInt16,System.UInt16)
    IL_0060: call T Z0.As::generic<T>(System.UInt16)
    IL_0065: ret
    IL_0066: ldtoken T
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: ldtoken System.UInt32
    IL_0075: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007F: brfalse.s IL_0099
    IL_0081: ldarg.0
    IL_0082: ldarg.1
    IL_0083: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0088: ldarg.2
    IL_0089: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008E: call System.UInt32 Z0.Bits::mix(Z0.N0,System.UInt32,System.UInt32)
    IL_0093: call T Z0.As::generic<T>(System.UInt32)
    IL_0098: ret
    IL_0099: ldtoken T
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: ldtoken System.UInt64
    IL_00A8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B2: brfalse.s IL_00CC
    IL_00B4: ldarg.0
    IL_00B5: ldarg.1
    IL_00B6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BB: ldarg.2
    IL_00BC: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00C1: call System.UInt64 Z0.Bits::mix(Z0.N0,System.UInt64,System.UInt64)
    IL_00C6: call T Z0.As::generic<T>(System.UInt64)
    IL_00CB: ret
    IL_00CC: ldstr "mix"
    IL_00D1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\mix.g.cs"
    IL_00D6: ldc.i4.s 37
    IL_00D8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00DD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E2: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663647, Name := T Z0.gbits::mix<T>(Z0.N0,T,T)
// ulong mix<ulong>(N0 parity, ulong x, ulong y)
// AggressiveInlining
ulong mix<ulong>(N0 parity, ulong x, ulong y)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0033
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: call System.Byte Z0.As::uint8<T>(T)
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.As::uint8<T>(T)
    IL_0028: call System.Byte Z0.Bits::mix(Z0.N0,System.Byte,System.Byte)
    IL_002D: call T Z0.As::generic<T>(System.Byte)
    IL_0032: ret
    IL_0033: ldtoken T
    IL_0038: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003D: ldtoken System.UInt16
    IL_0042: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0047: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004C: brfalse.s IL_0066
    IL_004E: ldarg.0
    IL_004F: ldarg.1
    IL_0050: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0055: ldarg.2
    IL_0056: call System.UInt16 Z0.As::uint16<T>(T)
    IL_005B: call System.UInt16 Z0.Bits::mix(Z0.N0,System.UInt16,System.UInt16)
    IL_0060: call T Z0.As::generic<T>(System.UInt16)
    IL_0065: ret
    IL_0066: ldtoken T
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: ldtoken System.UInt32
    IL_0075: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007F: brfalse.s IL_0099
    IL_0081: ldarg.0
    IL_0082: ldarg.1
    IL_0083: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0088: ldarg.2
    IL_0089: call System.UInt32 Z0.As::uint32<T>(T)
    IL_008E: call System.UInt32 Z0.Bits::mix(Z0.N0,System.UInt32,System.UInt32)
    IL_0093: call T Z0.As::generic<T>(System.UInt32)
    IL_0098: ret
    IL_0099: ldtoken T
    IL_009E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A3: ldtoken System.UInt64
    IL_00A8: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00AD: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B2: brfalse.s IL_00CC
    IL_00B4: ldarg.0
    IL_00B5: ldarg.1
    IL_00B6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BB: ldarg.2
    IL_00BC: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00C1: call System.UInt64 Z0.Bits::mix(Z0.N0,System.UInt64,System.UInt64)
    IL_00C6: call T Z0.As::generic<T>(System.UInt64)
    IL_00CB: ret
    IL_00CC: ldstr "mix"
    IL_00D1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\mix.g.cs"
    IL_00D6: ldc.i4.s 37
    IL_00D8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00DD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E2: throw
}
------------------------------------------------------------------------------------------------------------------------
