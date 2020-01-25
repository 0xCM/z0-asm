// Id := 100664058, Name := T Z0.gmath::select<T>(T,T,T)
// Int16 select<Int16>(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 select<Int16>(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0038
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.As::uint8<T>(T)
    IL_0027: ldarg.2
    IL_0028: call System.Byte Z0.As::uint8<T>(T)
    IL_002D: call System.Byte Z0.math::select(System.Byte,System.Byte,System.Byte)
    IL_0032: call T Z0.As::generic<T>(System.Byte)
    IL_0037: ret
    IL_0038: ldtoken T
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: ldtoken System.UInt16
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0051: brfalse.s IL_0070
    IL_0053: ldarg.0
    IL_0054: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0059: ldarg.1
    IL_005A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_005F: ldarg.2
    IL_0060: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0065: call System.UInt16 Z0.math::select(System.UInt16,System.UInt16,System.UInt16)
    IL_006A: call T Z0.As::generic<T>(System.UInt16)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: ldarg.1
    IL_0072: call T Z0.gmath::and<T>(T,T)
    IL_0077: ldarg.0
    IL_0078: ldarg.2
    IL_0079: call T Z0.gmath::nonimpl<T>(T,T)
    IL_007E: call T Z0.gmath::or<T>(T,T)
    IL_0083: ret
}
