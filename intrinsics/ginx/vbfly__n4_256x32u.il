// Id := 100665586, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N4,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> vbfly<uint>(N4 n, Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbfly<uint>(N4 n, Vector256<uint> x)
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
    IL_0036: brfalse.s IL_0052
    IL_0038: ldarg.0
    IL_0039: ldarg.1
    IL_003A: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_003F: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbfly(Z0.N4,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0044: stloc.0
    IL_0045: ldloca.s V_0
    IL_0047: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_004C: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0051: ret
    IL_0052: ldtoken T
    IL_0057: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005C: ldtoken System.UInt32
    IL_0061: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0066: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006B: brfalse.s IL_0087
    IL_006D: ldarg.0
    IL_006E: ldarg.1
    IL_006F: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0074: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N4,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0079: stloc.1
    IL_007A: ldloca.s V_1
    IL_007C: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0081: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00BC
    IL_00A2: ldarg.0
    IL_00A3: ldarg.1
    IL_00A4: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A9: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N4,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00AE: stloc.2
    IL_00AF: ldloca.s V_2
    IL_00B1: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00B6: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BB: ret
    IL_00BC: ldstr "vbfly"
    IL_00C1: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00C6: ldc.i4 179
    IL_00CB: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00D0: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00D5: throw
}
