// Id := 100663603, Name := T Z0.gbits::bfly<T>(Z0.N16,T)
// double bfly<double>(N16 n, double x)
// AggressiveInlining
double bfly<double>(N16 n, double x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0051
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.UInt16
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brtrue.s IL_0051
    IL_0036: ldtoken T
    IL_003B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0040: ldtoken System.UInt32
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004F: brfalse.s IL_0053
    IL_0051: ldarg.1
    IL_0052: ret
    IL_0053: ldtoken T
    IL_0058: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005D: ldtoken System.UInt64
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006C: brfalse.s IL_0080
    IL_006E: ldarg.0
    IL_006F: ldarg.1
    IL_0070: call System.UInt64 Z0.As::uint64<T>(T)
    IL_0075: call System.UInt64 Z0.Bits::bfly(Z0.N16,System.UInt64)
    IL_007A: call T Z0.As::generic<T>(System.UInt64)
    IL_007F: ret
    IL_0080: ldstr "bfly"
    IL_0085: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\bfly.g.cs"
    IL_008A: ldc.i4 134
    IL_008F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0094: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0099: throw
}
