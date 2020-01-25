// Id := 100663644, Name := T Z0.gbits::lsboff<T>(T)
// uint lsboff<uint>(uint src)
// AggressiveInlining
uint lsboff<uint>(uint src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002C
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: call System.Byte Z0.Bits::lsboff(System.Byte)
    IL_0026: call T Z0.As::generic<T>(System.Byte)
    IL_002B: ret
    IL_002C: ldtoken T
    IL_0031: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0036: ldtoken System.UInt16
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0045: brfalse.s IL_0058
    IL_0047: ldarg.0
    IL_0048: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004D: call System.UInt16 Z0.Bits::lsboff(System.UInt16)
    IL_0052: call T Z0.As::generic<T>(System.UInt16)
    IL_0057: ret
    IL_0058: ldtoken T
    IL_005D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0062: ldtoken System.UInt32
    IL_0067: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0071: brfalse.s IL_0084
    IL_0073: ldarg.0
    IL_0074: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0079: call System.UInt32 Z0.Bits::lsboff(System.UInt32)
    IL_007E: call T Z0.As::generic<T>(System.UInt32)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt64
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brfalse.s IL_00B0
    IL_009F: ldarg.0
    IL_00A0: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A5: call System.UInt64 Z0.Bits::lsboff(System.UInt64)
    IL_00AA: call T Z0.As::generic<T>(System.UInt64)
    IL_00AF: ret
    IL_00B0: ldstr "lsboff"
    IL_00B5: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\lsboff.g.cs"
    IL_00BA: ldc.i4.s 35
    IL_00BC: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C1: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C6: throw
}
