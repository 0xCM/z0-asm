// Id := 100663674, Name := System.Void Z0.gbits::split<T>(T,System.Int32,T&,T&)
// void split<byte>(byte src, int index, out byte x0, out byte x1)
// AggressiveInlining
void split<byte>(byte src, int index, out byte x0, out byte x1)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0044
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: ldloca.s V_0
    IL_0024: ldloca.s V_1
    IL_0026: call System.Void Z0.Bits::split(System.Byte,System.Int32,System.Byte&,System.Byte&)
    IL_002B: ldarg.2
    IL_002C: ldloc.0
    IL_002D: call T Z0.As::generic<T>(System.Byte)
    IL_0032: stobj T
    IL_0037: ldarg.3
    IL_0038: ldloc.1
    IL_0039: call T Z0.As::generic<T>(System.Byte)
    IL_003E: stobj T
    IL_0043: ret
    IL_0044: ldtoken T
    IL_0049: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004E: ldtoken System.UInt16
    IL_0053: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0058: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005D: brfalse.s IL_0088
    IL_005F: ldarg.0
    IL_0060: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0065: ldarg.1
    IL_0066: ldloca.s V_2
    IL_0068: ldloca.s V_3
    IL_006A: call System.Void Z0.Bits::split(System.UInt16,System.Int32,System.UInt16&,System.UInt16&)
    IL_006F: ldarg.2
    IL_0070: ldloc.2
    IL_0071: call T Z0.As::generic<T>(System.UInt16)
    IL_0076: stobj T
    IL_007B: ldarg.3
    IL_007C: ldloc.3
    IL_007D: call T Z0.As::generic<T>(System.UInt16)
    IL_0082: stobj T
    IL_0087: ret
    IL_0088: ldtoken T
    IL_008D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0092: ldtoken System.UInt32
    IL_0097: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A1: brfalse.s IL_00CE
    IL_00A3: ldarg.0
    IL_00A4: call System.UInt32 Z0.As::uint32<T>(T)
    IL_00A9: ldarg.1
    IL_00AA: ldloca.s V_4
    IL_00AC: ldloca.s V_5
    IL_00AE: call System.Void Z0.Bits::split(System.UInt32,System.Int32,System.UInt32&,System.UInt32&)
    IL_00B3: ldarg.2
    IL_00B4: ldloc.s V_4
    IL_00B6: call T Z0.As::generic<T>(System.UInt32)
    IL_00BB: stobj T
    IL_00C0: ldarg.3
    IL_00C1: ldloc.s V_5
    IL_00C3: call T Z0.As::generic<T>(System.UInt32)
    IL_00C8: stobj T
    IL_00CD: ret
    IL_00CE: ldtoken T
    IL_00D3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D8: ldtoken System.UInt64
    IL_00DD: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00E2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00E7: brfalse.s IL_0114
    IL_00E9: ldarg.0
    IL_00EA: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00EF: ldarg.1
    IL_00F0: ldloca.s V_6
    IL_00F2: ldloca.s V_7
    IL_00F4: call System.Void Z0.Bits::split(System.UInt64,System.Int32,System.UInt64&,System.UInt64&)
    IL_00F9: ldarg.2
    IL_00FA: ldloc.s V_6
    IL_00FC: call T Z0.As::generic<T>(System.UInt64)
    IL_0101: stobj T
    IL_0106: ldarg.3
    IL_0107: ldloc.s V_7
    IL_0109: call T Z0.As::generic<T>(System.UInt64)
    IL_010E: stobj T
    IL_0113: ret
    IL_0114: ldstr "split"
    IL_0119: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\split.g.cs"
    IL_011E: ldc.i4.s 53
    IL_0120: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0125: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_012A: throw
}
