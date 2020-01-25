// Id := 100663951, Name := T Z0.gmath::clamp<T>(T,T)
// int clamp<int>(int a, int b)
// AggressiveInlining
int clamp<int>(int a, int b)
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
    IL_0027: call System.Byte Z0.math::clamp(System.Byte,System.Byte)
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
    IL_0059: call System.UInt16 Z0.math::clamp(System.UInt16,System.UInt16)
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
    IL_008B: call System.UInt32 Z0.math::clamp(System.UInt32,System.UInt32)
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
    IL_00BD: call System.UInt64 Z0.math::clamp(System.UInt64,System.UInt64)
    IL_00C2: call T Z0.As::generic<T>(System.UInt64)
    IL_00C7: ret
    IL_00C8: ldarg.0
    IL_00C9: ldarg.1
    IL_00CA: call T Z0.gmath::clamp_i<T>(T,T)
    IL_00CF: ret
}
