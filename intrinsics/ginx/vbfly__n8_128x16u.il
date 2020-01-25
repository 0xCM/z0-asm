// Id := 100665582, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbfly<T>(Z0.N8,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> vbfly<ushort>(N8 n, Vector128<ushort> x)
// AggressiveInlining
Vector128<ushort> vbfly<ushort>(N8 n, Vector128<ushort> x)
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
    IL_0051: brfalse.s IL_006D
    IL_0053: ldarg.0
    IL_0054: ldarg.1
    IL_0055: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_005A: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_005F: stloc.0
    IL_0060: ldloca.s V_0
    IL_0062: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>&)
    IL_0067: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_006C: ret
    IL_006D: ldtoken T
    IL_0072: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0077: ldtoken System.UInt64
    IL_007C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0081: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0086: brfalse.s IL_00A2
    IL_0088: ldarg.0
    IL_0089: ldarg.1
    IL_008A: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_008F: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_0094: stloc.1
    IL_0095: ldloca.s V_1
    IL_0097: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>&)
    IL_009C: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_00A1: ret
    IL_00A2: ldstr "vbfly"
    IL_00A7: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00AC: ldc.i4.s 98
    IL_00AE: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B3: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00B8: throw
}
