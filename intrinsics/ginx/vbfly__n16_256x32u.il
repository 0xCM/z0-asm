// Id := 100665588, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N16,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> vbfly<uint>(N16 n, Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbfly<uint>(N16 n, Vector256<uint> x)
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
    IL_006C: brfalse.s IL_0088
    IL_006E: ldarg.0
    IL_006F: ldarg.1
    IL_0070: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N16,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_007A: stloc.0
    IL_007B: ldloca.s V_0
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_0082: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0087: ret
    IL_0088: ldstr "vbfly"
    IL_008D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_0092: ldc.i4 216
    IL_0097: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_009C: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00A1: throw
}
