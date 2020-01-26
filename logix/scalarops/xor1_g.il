// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// byte xor1<byte>(byte a)
// AggressiveInlining
byte xor1<byte>(byte a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// sbyte xor1<sbyte>(sbyte a)
// AggressiveInlining
sbyte xor1<sbyte>(sbyte a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// ushort xor1<ushort>(ushort a)
// AggressiveInlining
ushort xor1<ushort>(ushort a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// Int16 xor1<Int16>(Int16 a)
// AggressiveInlining
Int16 xor1<Int16>(Int16 a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// uint xor1<uint>(uint a)
// AggressiveInlining
uint xor1<uint>(uint a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// int xor1<int>(int a)
// AggressiveInlining
int xor1<int>(int a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// ulong xor1<ulong>(ulong a)
// AggressiveInlining
ulong xor1<ulong>(ulong a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664542, Name := T Z0.Logix.ScalarOps::xor1<T>(T)
// long xor1<long>(long a)
// AggressiveInlining
long xor1<long>(long a)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldc.i4 255
    IL_0026: xor
    IL_0027: conv.u1
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005B
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldc.i4 65535
    IL_0054: xor
    IL_0055: call T Z0.As::generic<T>(System.Int32)
    IL_005A: ret
    IL_005B: ldtoken T
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: ldtoken System.UInt32
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0074: brfalse.s IL_0084
    IL_0076: ldarg.0
    IL_0077: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007C: ldc.i4.m1
    IL_007D: xor
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00AE
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: ldc.i4.m1
    IL_00A6: conv.i8
    IL_00A7: xor
    IL_00A8: call T Z0.As::generic<T>(System.UInt64)
    IL_00AD: ret
    IL_00AE: ldstr "xor1"
    IL_00B3: ldstr "J:\\dev\\projects\\z0\\logix\\src\\operators\\impl\\ScalarOps.cs"
    IL_00B8: ldc.i4.s 87
    IL_00BA: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BF: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C4: throw
}
------------------------------------------------------------------------------------------------------------------------
