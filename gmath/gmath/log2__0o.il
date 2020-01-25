// Id := 100663990, Name := System.UInt32 Z0.gmath::log2<T>()
// uint log2<ulong>()
// AggressiveInlining
uint log2<ulong>()
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_001D
    IL_001B: ldc.i4.8
    IL_001C: ret
    IL_001D: ldtoken T
    IL_0022: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0027: ldtoken System.UInt16
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0036: brfalse.s IL_003B
    IL_0038: ldc.i4.s 16
    IL_003A: ret
    IL_003B: ldtoken T
    IL_0040: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0045: ldtoken System.UInt32
    IL_004A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0054: brfalse.s IL_0059
    IL_0056: ldc.i4.s 32
    IL_0058: ret
    IL_0059: ldtoken T
    IL_005E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0063: ldtoken System.UInt64
    IL_0068: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006D: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0072: brfalse.s IL_0077
    IL_0074: ldc.i4.s 64
    IL_0076: ret
    IL_0077: ldstr "log2"
    IL_007C: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\generic\\arithmetic\\log2.g.cs"
    IL_0081: ldc.i4.s 35
    IL_0083: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0088: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_008D: throw
}
