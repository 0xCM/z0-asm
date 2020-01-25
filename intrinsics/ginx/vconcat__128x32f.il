// Id := 100665181, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector256<float> vconcat<float>(Vector128<float> lo, Vector128<float> hi)
// AggressiveInlining
Vector256<float> vconcat<float>(Vector128<float> lo, Vector128<float> hi)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_003A
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0027: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_002C: stloc.0
    IL_002D: ldloca.s V_0
    IL_002F: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_0034: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0039: ret
    IL_003A: ldtoken T
    IL_003F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0044: ldtoken System.UInt16
    IL_0049: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0053: brfalse.s IL_0074
    IL_0055: ldarg.0
    IL_0056: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_005B: ldarg.1
    IL_005C: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0061: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt16>,System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0066: stloc.1
    IL_0067: ldloca.s V_1
    IL_0069: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_006E: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_0073: ret
    IL_0074: ldtoken T
    IL_0079: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_007E: ldtoken System.UInt32
    IL_0083: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0088: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_008D: brfalse.s IL_00AE
    IL_008F: ldarg.0
    IL_0090: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0095: ldarg.1
    IL_0096: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_009B: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt32>,System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_00A0: stloc.2
    IL_00A1: ldloca.s V_2
    IL_00A3: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00A8: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00AD: ret
    IL_00AE: ldtoken T
    IL_00B3: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B8: ldtoken System.UInt64
    IL_00BD: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C2: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00C7: brfalse.s IL_00E8
    IL_00C9: ldarg.0
    IL_00CA: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00CF: ldarg.1
    IL_00D0: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00D5: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00DA: stloc.3
    IL_00DB: ldloca.s V_3
    IL_00DD: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00E2: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00E7: ret
    IL_00E8: ldarg.0
    IL_00E9: ldarg.1
    IL_00EA: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vconcat_i<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00EF: ret
}
