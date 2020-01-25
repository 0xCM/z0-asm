// Id := 100665585, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N2,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vbfly<ushort>(N2 n, Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vbfly<ushort>(N2 n, Vector256<ushort> x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0035
    IL_001B: ldarg.0
    IL_001C: ldarg.1
    IL_001D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbfly(Z0.N2,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0027: stloc.0
    IL_0028: ldloca.s V_0
    IL_002A: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_002F: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0034: ret
    IL_0035: ldtoken T
    IL_003A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003F: ldtoken System.UInt16
    IL_0044: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0049: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004E: brfalse.s IL_006A
    IL_0050: ldarg.0
    IL_0051: ldarg.1
    IL_0052: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0057: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbfly(Z0.N2,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_005C: stloc.1
    IL_005D: ldloca.s V_1
    IL_005F: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_0064: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0069: ret
    IL_006A: ldtoken T
    IL_006F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0074: ldtoken System.UInt32
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0083: brfalse.s IL_009F
    IL_0085: ldarg.0
    IL_0086: ldarg.1
    IL_0087: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N2,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_0091: stloc.2
    IL_0092: ldloca.s V_2
    IL_0094: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0099: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_009E: ret
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.UInt64
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00D4
    IL_00BA: ldarg.0
    IL_00BB: ldarg.1
    IL_00BC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C1: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N2,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00C6: stloc.3
    IL_00C7: ldloca.s V_3
    IL_00C9: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00CE: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00D3: ret
    IL_00D4: ldstr "vbfly"
    IL_00D9: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00DE: ldc.i4 157
    IL_00E3: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E8: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00ED: throw
}
