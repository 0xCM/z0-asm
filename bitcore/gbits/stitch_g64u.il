// Id := 100663675, Name := T Z0.gbits::stitch<T>(T,System.Int32,T,System.Int32)
// ulong stitch<ulong>(ulong left, int ldx, ulong right, int rdx)
// AggressiveInlining
ulong stitch<ulong>(ulong left, int ldx, ulong right, int rdx)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0034
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.As::uint8<T>(T)
    IL_0028: ldarg.3
    IL_0029: call System.Byte Z0.Bits::stitch(System.Byte,System.Int32,System.Byte,System.Int32)
    IL_002E: call T Z0.As::generic<T>(System.Byte)
    IL_0033: ret
    IL_0034: ldtoken T
    IL_0039: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003E: ldtoken System.UInt16
    IL_0043: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0048: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004D: brfalse.s IL_0068
    IL_004F: ldarg.0
    IL_0050: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0055: ldarg.1
    IL_0056: ldarg.2
    IL_0057: call System.UInt16 Z0.As::uint16<T>(T)
    IL_005C: ldarg.3
    IL_005D: call System.UInt16 Z0.Bits::stitch(System.UInt16,System.Int32,System.UInt16,System.Int32)
    IL_0062: call T Z0.As::generic<T>(System.UInt16)
    IL_0067: ret
    IL_0068: ldtoken T
    IL_006D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0072: ldtoken System.UInt32
    IL_0077: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0081: brfalse.s IL_009C
    IL_0083: ldarg.0
    IL_0084: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0089: ldarg.1
    IL_008A: ldarg.2
    IL_008B: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0090: ldarg.3
    IL_0091: call System.UInt32 Z0.Bits::stitch(System.UInt32,System.Int32,System.UInt32,System.Int32)
    IL_0096: call T Z0.As::generic<T>(System.UInt32)
    IL_009B: ret
    IL_009C: ldtoken T
    IL_00A1: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A6: ldtoken System.UInt64
    IL_00AB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B0: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B5: brfalse.s IL_00D0
    IL_00B7: ldarg.0
    IL_00B8: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00BD: ldarg.1
    IL_00BE: ldarg.2
    IL_00BF: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00C4: ldarg.3
    IL_00C5: call System.UInt64 Z0.Bits::stitch(System.UInt64,System.Int32,System.UInt64,System.Int32)
    IL_00CA: call T Z0.As::generic<T>(System.UInt64)
    IL_00CF: ret
    IL_00D0: ldstr "stitch"
    IL_00D5: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\stitch.g.cs"
    IL_00DA: ldc.i4.s 43
    IL_00DC: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E1: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E6: throw
}
