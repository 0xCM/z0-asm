// Id := 100663602, Name := T Z0.gbits::bfly<T>(Z0.N8,T)
// double bfly<double>(N8 n, double x)
// AggressiveInlining
double bfly<double>(N8 n, double x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0038
    IL_0036: ldarg.1
    IL_0037: ret
    IL_0038: ldtoken T
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: ldtoken System.UInt32
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0051: brfalse.s IL_0065
    IL_0053: ldarg.0
    IL_0054: ldarg.1
    IL_0055: call System.UInt32 Z0.As::uint32<T>(T)
    IL_005A: call System.UInt32 Z0.Bits::bfly(Z0.N8,System.UInt32)
    IL_005F: call T Z0.As::generic<T>(System.UInt32)
    IL_0064: ret
    IL_0065: ldtoken T
    IL_006A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006F: ldtoken System.UInt64
    IL_0074: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0079: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_007E: brfalse.s IL_0092
    IL_0080: ldarg.0
    IL_0081: ldarg.1
    IL_0082: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0087: call System.UInt64 Z0.Bits::bfly(Z0.N8,System.UInt64)
    IL_008C: call T Z0.As::generic<T>(System.UInt64)
    IL_0091: ret
    IL_0092: ldstr "bfly"
    IL_0097: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\bfly.g.cs"
    IL_009C: ldc.i4.s 117
    IL_009E: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00A3: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00A8: throw
}
