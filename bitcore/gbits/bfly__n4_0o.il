// Id := 100663601, Name := T Z0.gbits::bfly<T>(Z0.N4,T)
// double bfly<double>(N4 n, double x)
// AggressiveInlining
double bfly<double>(N4 n, double x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_001D
    IL_001B: ldarg.1
    IL_001C: ret
    IL_001D: ldtoken T
    IL_0022: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0027: ldtoken System.UInt16
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0036: brfalse.s IL_004A
    IL_0038: ldarg.0
    IL_0039: ldarg.1
    IL_003A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_003F: call System.UInt16 Z0.Bits::bfly(Z0.N4,System.UInt16)
    IL_0044: call T Z0.As::generic<T>(System.UInt16)
    IL_0049: ret
    IL_004A: ldtoken T
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: ldtoken System.UInt32
    IL_0059: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0063: brfalse.s IL_0077
    IL_0065: ldarg.0
    IL_0066: ldarg.1
    IL_0067: call System.UInt32 Z0.As::uint32<T>(T)
    IL_006C: call System.UInt32 Z0.Bits::bfly(Z0.N4,System.UInt32)
    IL_0071: call T Z0.As::generic<T>(System.UInt32)
    IL_0076: ret
    IL_0077: ldtoken T
    IL_007C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0081: ldtoken System.UInt64
    IL_0086: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0090: brfalse.s IL_00A4
    IL_0092: ldarg.0
    IL_0093: ldarg.1
    IL_0094: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0099: call System.UInt64 Z0.Bits::bfly(Z0.N4,System.UInt64)
    IL_009E: call T Z0.As::generic<T>(System.UInt64)
    IL_00A3: ret
    IL_00A4: ldstr "bfly"
    IL_00A9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\bfly.g.cs"
    IL_00AE: ldc.i4.s 97
    IL_00B0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00BA: throw
}
