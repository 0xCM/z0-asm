// Id := 100663651, Name := System.Int32 Z0.gbits::ntz<T>(T)
// int ntz<byte>(byte src)
// AggressiveInlining
int ntz<byte>(byte src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0027
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: call System.Int32 Z0.Bits::ntz(System.Byte)
    IL_0026: ret
    IL_0027: ldtoken T
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: ldtoken System.UInt16
    IL_0036: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0040: brfalse.s IL_004E
    IL_0042: ldarg.0
    IL_0043: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0048: call System.Int32 Z0.Bits::ntz(System.UInt16)
    IL_004D: ret
    IL_004E: ldtoken T
    IL_0053: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0058: ldtoken System.UInt32
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0067: brfalse.s IL_0075
    IL_0069: ldarg.0
    IL_006A: call System.UInt32 Z0.As::uint32<T>(T)
    IL_006F: call System.Int32 Z0.Bits::ntz(System.UInt32)
    IL_0074: ret
    IL_0075: ldtoken T
    IL_007A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007F: ldtoken System.UInt64
    IL_0084: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0089: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008E: brfalse.s IL_009C
    IL_0090: ldarg.0
    IL_0091: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0096: call System.Int32 Z0.Bits::ntz(System.UInt64)
    IL_009B: ret
    IL_009C: ldstr "ntz"
    IL_00A1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\ntz.g.cs"
    IL_00A6: ldc.i4.s 35
    IL_00A8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00AD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00B2: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663651, Name := System.Int32 Z0.gbits::ntz<T>(T)
// int ntz<ushort>(ushort src)
// AggressiveInlining
int ntz<ushort>(ushort src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0027
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: call System.Int32 Z0.Bits::ntz(System.Byte)
    IL_0026: ret
    IL_0027: ldtoken T
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: ldtoken System.UInt16
    IL_0036: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0040: brfalse.s IL_004E
    IL_0042: ldarg.0
    IL_0043: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0048: call System.Int32 Z0.Bits::ntz(System.UInt16)
    IL_004D: ret
    IL_004E: ldtoken T
    IL_0053: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0058: ldtoken System.UInt32
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0067: brfalse.s IL_0075
    IL_0069: ldarg.0
    IL_006A: call System.UInt32 Z0.As::uint32<T>(T)
    IL_006F: call System.Int32 Z0.Bits::ntz(System.UInt32)
    IL_0074: ret
    IL_0075: ldtoken T
    IL_007A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007F: ldtoken System.UInt64
    IL_0084: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0089: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008E: brfalse.s IL_009C
    IL_0090: ldarg.0
    IL_0091: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0096: call System.Int32 Z0.Bits::ntz(System.UInt64)
    IL_009B: ret
    IL_009C: ldstr "ntz"
    IL_00A1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\ntz.g.cs"
    IL_00A6: ldc.i4.s 35
    IL_00A8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00AD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00B2: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663651, Name := System.Int32 Z0.gbits::ntz<T>(T)
// int ntz<uint>(uint src)
// AggressiveInlining
int ntz<uint>(uint src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0027
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: call System.Int32 Z0.Bits::ntz(System.Byte)
    IL_0026: ret
    IL_0027: ldtoken T
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: ldtoken System.UInt16
    IL_0036: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0040: brfalse.s IL_004E
    IL_0042: ldarg.0
    IL_0043: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0048: call System.Int32 Z0.Bits::ntz(System.UInt16)
    IL_004D: ret
    IL_004E: ldtoken T
    IL_0053: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0058: ldtoken System.UInt32
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0067: brfalse.s IL_0075
    IL_0069: ldarg.0
    IL_006A: call System.UInt32 Z0.As::uint32<T>(T)
    IL_006F: call System.Int32 Z0.Bits::ntz(System.UInt32)
    IL_0074: ret
    IL_0075: ldtoken T
    IL_007A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007F: ldtoken System.UInt64
    IL_0084: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0089: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008E: brfalse.s IL_009C
    IL_0090: ldarg.0
    IL_0091: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0096: call System.Int32 Z0.Bits::ntz(System.UInt64)
    IL_009B: ret
    IL_009C: ldstr "ntz"
    IL_00A1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\ntz.g.cs"
    IL_00A6: ldc.i4.s 35
    IL_00A8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00AD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00B2: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663651, Name := System.Int32 Z0.gbits::ntz<T>(T)
// int ntz<ulong>(ulong src)
// AggressiveInlining
int ntz<ulong>(ulong src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0027
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: call System.Int32 Z0.Bits::ntz(System.Byte)
    IL_0026: ret
    IL_0027: ldtoken T
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: ldtoken System.UInt16
    IL_0036: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0040: brfalse.s IL_004E
    IL_0042: ldarg.0
    IL_0043: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0048: call System.Int32 Z0.Bits::ntz(System.UInt16)
    IL_004D: ret
    IL_004E: ldtoken T
    IL_0053: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0058: ldtoken System.UInt32
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0067: brfalse.s IL_0075
    IL_0069: ldarg.0
    IL_006A: call System.UInt32 Z0.As::uint32<T>(T)
    IL_006F: call System.Int32 Z0.Bits::ntz(System.UInt32)
    IL_0074: ret
    IL_0075: ldtoken T
    IL_007A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007F: ldtoken System.UInt64
    IL_0084: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0089: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008E: brfalse.s IL_009C
    IL_0090: ldarg.0
    IL_0091: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0096: call System.Int32 Z0.Bits::ntz(System.UInt64)
    IL_009B: ret
    IL_009C: ldstr "ntz"
    IL_00A1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\ntz.g.cs"
    IL_00A6: ldc.i4.s 35
    IL_00A8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00AD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00B2: throw
}
------------------------------------------------------------------------------------------------------------------------
