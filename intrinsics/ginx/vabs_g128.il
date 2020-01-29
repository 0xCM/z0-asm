// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vabs<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> vabs<sbyte>(Vector128<sbyte> x)
// AggressiveInlining
Vector128<sbyte> vabs<sbyte>(Vector128<sbyte> x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0034
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0026: stloc.0
    IL_0027: ldloca.s V_0
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.SByte>&)
    IL_002E: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0033: ret
    IL_0034: ldtoken T
    IL_0039: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003E: ldtoken System.Int16
    IL_0043: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0048: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004D: brfalse.s IL_0068
    IL_004F: ldarg.0
    IL_0050: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0055: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_005A: stloc.1
    IL_005B: ldloca.s V_1
    IL_005D: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int16>&)
    IL_0062: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0067: ret
    IL_0068: ldtoken T
    IL_006D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0072: ldtoken System.Int32
    IL_0077: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0081: brfalse.s IL_009C
    IL_0083: ldarg.0
    IL_0084: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0089: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_008E: stloc.2
    IL_008F: ldloca.s V_2
    IL_0091: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int32>&)
    IL_0096: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_009B: ret
    IL_009C: ldtoken T
    IL_00A1: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A6: ldtoken System.Int64
    IL_00AB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B0: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B5: brfalse.s IL_00D0
    IL_00B7: ldarg.0
    IL_00B8: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00BD: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_00C2: stloc.3
    IL_00C3: ldloca.s V_3
    IL_00C5: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int64>&)
    IL_00CA: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_00CF: ret
    IL_00D0: ldstr "vabs"
    IL_00D5: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arithmetic\\abs.g.cs"
    IL_00DA: ldc.i4.s 31
    IL_00DC: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E1: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E6: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vabs<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<short> vabs<short>(Vector128<short> x)
// AggressiveInlining
Vector128<short> vabs<short>(Vector128<short> x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0034
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0026: stloc.0
    IL_0027: ldloca.s V_0
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.SByte>&)
    IL_002E: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0033: ret
    IL_0034: ldtoken T
    IL_0039: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003E: ldtoken System.Int16
    IL_0043: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0048: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004D: brfalse.s IL_0068
    IL_004F: ldarg.0
    IL_0050: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0055: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_005A: stloc.1
    IL_005B: ldloca.s V_1
    IL_005D: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int16>&)
    IL_0062: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0067: ret
    IL_0068: ldtoken T
    IL_006D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0072: ldtoken System.Int32
    IL_0077: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0081: brfalse.s IL_009C
    IL_0083: ldarg.0
    IL_0084: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0089: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_008E: stloc.2
    IL_008F: ldloca.s V_2
    IL_0091: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int32>&)
    IL_0096: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_009B: ret
    IL_009C: ldtoken T
    IL_00A1: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A6: ldtoken System.Int64
    IL_00AB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B0: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B5: brfalse.s IL_00D0
    IL_00B7: ldarg.0
    IL_00B8: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00BD: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_00C2: stloc.3
    IL_00C3: ldloca.s V_3
    IL_00C5: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int64>&)
    IL_00CA: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_00CF: ret
    IL_00D0: ldstr "vabs"
    IL_00D5: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arithmetic\\abs.g.cs"
    IL_00DA: ldc.i4.s 31
    IL_00DC: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E1: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E6: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vabs<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> vabs<int>(Vector128<int> x)
// AggressiveInlining
Vector128<int> vabs<int>(Vector128<int> x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0034
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0026: stloc.0
    IL_0027: ldloca.s V_0
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.SByte>&)
    IL_002E: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0033: ret
    IL_0034: ldtoken T
    IL_0039: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003E: ldtoken System.Int16
    IL_0043: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0048: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004D: brfalse.s IL_0068
    IL_004F: ldarg.0
    IL_0050: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0055: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_005A: stloc.1
    IL_005B: ldloca.s V_1
    IL_005D: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int16>&)
    IL_0062: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0067: ret
    IL_0068: ldtoken T
    IL_006D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0072: ldtoken System.Int32
    IL_0077: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0081: brfalse.s IL_009C
    IL_0083: ldarg.0
    IL_0084: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0089: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_008E: stloc.2
    IL_008F: ldloca.s V_2
    IL_0091: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int32>&)
    IL_0096: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_009B: ret
    IL_009C: ldtoken T
    IL_00A1: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A6: ldtoken System.Int64
    IL_00AB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B0: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B5: brfalse.s IL_00D0
    IL_00B7: ldarg.0
    IL_00B8: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00BD: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_00C2: stloc.3
    IL_00C3: ldloca.s V_3
    IL_00C5: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int64>&)
    IL_00CA: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_00CF: ret
    IL_00D0: ldstr "vabs"
    IL_00D5: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arithmetic\\abs.g.cs"
    IL_00DA: ldc.i4.s 31
    IL_00DC: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E1: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E6: throw
}
------------------------------------------------------------------------------------------------------------------------
// System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vabs<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> vabs<long>(Vector128<long> x)
// AggressiveInlining
Vector128<long> vabs<long>(Vector128<long> x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.SByte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0034
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0021: call System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0026: stloc.0
    IL_0027: ldloca.s V_0
    IL_0029: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.SByte>&)
    IL_002E: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0033: ret
    IL_0034: ldtoken T
    IL_0039: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003E: ldtoken System.Int16
    IL_0043: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0048: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_004D: brfalse.s IL_0068
    IL_004F: ldarg.0
    IL_0050: call System.Runtime.Intrinsics.Vector128`1<System.Int16> zfunc::v16i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0055: call System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_005A: stloc.1
    IL_005B: ldloca.s V_1
    IL_005D: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int16>&)
    IL_0062: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0067: ret
    IL_0068: ldtoken T
    IL_006D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0072: ldtoken System.Int32
    IL_0077: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007C: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0081: brfalse.s IL_009C
    IL_0083: ldarg.0
    IL_0084: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0089: call System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_008E: stloc.2
    IL_008F: ldloca.s V_2
    IL_0091: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int32>&)
    IL_0096: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_009B: ret
    IL_009C: ldtoken T
    IL_00A1: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A6: ldtoken System.Int64
    IL_00AB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B0: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B5: brfalse.s IL_00D0
    IL_00B7: ldarg.0
    IL_00B8: call System.Runtime.Intrinsics.Vector128`1<System.Int64> zfunc::v64i<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00BD: call System.Runtime.Intrinsics.Vector128`1<System.Int64> Z0.dinx::vabs(System.Runtime.Intrinsics.Vector128`1<System.Int64>)
    IL_00C2: stloc.3
    IL_00C3: ldloca.s V_3
    IL_00C5: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Int64>&)
    IL_00CA: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_00CF: ret
    IL_00D0: ldstr "vabs"
    IL_00D5: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arithmetic\\abs.g.cs"
    IL_00DA: ldc.i4.s 31
    IL_00DC: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E1: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00E6: throw
}
------------------------------------------------------------------------------------------------------------------------
