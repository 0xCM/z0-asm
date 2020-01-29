// T Z0.gbits::byteswap<T>(T)
// ushort byteswap<ushort>(ushort src)
// AggressiveInlining
ushort byteswap<ushort>(ushort src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.UInt16
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0021: call System.UInt16 Z0.Bits::byteswap(System.UInt16)
    IL_0026: call T Z0.As::generic<T>(System.UInt16)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.UInt32
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.UInt32 Z0.As::uint32<T>(T)
    IL_004D: call System.UInt32 Z0.Bits::byteswap(System.UInt32)
    IL_0052: call T Z0.As::generic<T>(System.UInt32)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.UInt64
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0079: call System.UInt64 Z0.Bits::byteswap(System.UInt64)
    IL_007E: call T Z0.As::generic<T>(System.UInt64)
    IL_0083: ret
    IL_0084: ldstr "byteswap"
    IL_0089: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\byteswap.g.cs"
    IL_008E: ldc.i4.s 28
    IL_0090: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0095: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_009A: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::byteswap<T>(T)
// uint byteswap<uint>(uint src)
// AggressiveInlining
uint byteswap<uint>(uint src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.UInt16
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0021: call System.UInt16 Z0.Bits::byteswap(System.UInt16)
    IL_0026: call T Z0.As::generic<T>(System.UInt16)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.UInt32
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.UInt32 Z0.As::uint32<T>(T)
    IL_004D: call System.UInt32 Z0.Bits::byteswap(System.UInt32)
    IL_0052: call T Z0.As::generic<T>(System.UInt32)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.UInt64
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0079: call System.UInt64 Z0.Bits::byteswap(System.UInt64)
    IL_007E: call T Z0.As::generic<T>(System.UInt64)
    IL_0083: ret
    IL_0084: ldstr "byteswap"
    IL_0089: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\byteswap.g.cs"
    IL_008E: ldc.i4.s 28
    IL_0090: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0095: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_009A: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::byteswap<T>(T)
// ulong byteswap<ulong>(ulong src)
// AggressiveInlining
ulong byteswap<ulong>(ulong src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.UInt16
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0021: call System.UInt16 Z0.Bits::byteswap(System.UInt16)
    IL_0026: call T Z0.As::generic<T>(System.UInt16)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.UInt32
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.UInt32 Z0.As::uint32<T>(T)
    IL_004D: call System.UInt32 Z0.Bits::byteswap(System.UInt32)
    IL_0052: call T Z0.As::generic<T>(System.UInt32)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.UInt64
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0079: call System.UInt64 Z0.Bits::byteswap(System.UInt64)
    IL_007E: call T Z0.As::generic<T>(System.UInt64)
    IL_0083: ret
    IL_0084: ldstr "byteswap"
    IL_0089: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\byteswap.g.cs"
    IL_008E: ldc.i4.s 28
    IL_0090: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0095: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_009A: throw
}
------------------------------------------------------------------------------------------------------------------------
