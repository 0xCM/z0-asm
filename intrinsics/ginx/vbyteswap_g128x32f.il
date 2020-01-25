// Id := 100665227, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbyteswap<T>(System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<float> vbyteswap<float>(Vector128<float> x)
// AggressiveInlining
Vector128<float> vbyteswap<float>(Vector128<float> x)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_001D
    IL_001B: ldarg.0
    IL_001C: ret
    IL_001D: ldtoken T
    IL_0022: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0027: ldtoken System.UInt16
    IL_002C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0031: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0036: brfalse.s IL_0051
    IL_0038: ldarg.0
    IL_0039: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_003E: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_0043: stloc.0
    IL_0044: ldloca.s V_0
    IL_0046: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>&)
    IL_004B: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0050: ret
    IL_0051: ldtoken T
    IL_0056: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005B: ldtoken System.UInt32
    IL_0060: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0065: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006A: brfalse.s IL_0085
    IL_006C: ldarg.0
    IL_006D: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0072: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_0077: stloc.1
    IL_0078: ldloca.s V_1
    IL_007A: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>&)
    IL_007F: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0084: ret
    IL_0085: ldtoken T
    IL_008A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008F: ldtoken System.UInt64
    IL_0094: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0099: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009E: brfalse.s IL_00B9
    IL_00A0: ldarg.0
    IL_00A1: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_00A6: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vbyteswap(System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_00AB: stloc.2
    IL_00AC: ldloca.s V_2
    IL_00AE: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.UInt64>&)
    IL_00B3: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_00B8: ret
    IL_00B9: ldstr "vbyteswap"
    IL_00BE: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\arrange\\perm\\byteswap.g.cs"
    IL_00C3: ldc.i4.s 34
    IL_00C5: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00CA: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CF: throw
}
