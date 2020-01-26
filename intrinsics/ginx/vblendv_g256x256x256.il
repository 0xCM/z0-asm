// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> vblendv<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
// AggressiveInlining
Vector256<byte> vblendv<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> vblendv<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> spec)
// AggressiveInlining
Vector256<sbyte> vblendv<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vblendv<ushort>(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> spec)
// AggressiveInlining
Vector256<ushort> vblendv<ushort>(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<Int16> vblendv<Int16>(Vector256<Int16> x, Vector256<Int16> y, Vector256<Int16> spec)
// AggressiveInlining
Vector256<Int16> vblendv<Int16>(Vector256<Int16> x, Vector256<Int16> y, Vector256<Int16> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> vblendv<uint>(Vector256<uint> x, Vector256<uint> y, Vector256<uint> spec)
// AggressiveInlining
Vector256<uint> vblendv<uint>(Vector256<uint> x, Vector256<uint> y, Vector256<uint> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> vblendv<int>(Vector256<int> x, Vector256<int> y, Vector256<int> spec)
// AggressiveInlining
Vector256<int> vblendv<int>(Vector256<int> x, Vector256<int> y, Vector256<int> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vblendv<ulong>(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> spec)
// AggressiveInlining
Vector256<ulong> vblendv<ulong>(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> vblendv<long>(Vector256<long> x, Vector256<long> y, Vector256<long> spec)
// AggressiveInlining
Vector256<long> vblendv<long>(Vector256<long> x, Vector256<long> y, Vector256<long> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<float> vblendv<float>(Vector256<float> x, Vector256<float> y, Vector256<float> spec)
// AggressiveInlining
Vector256<float> vblendv<float>(Vector256<float> x, Vector256<float> y, Vector256<float> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665467, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<double> vblendv<double>(Vector256<double> x, Vector256<double> y, Vector256<double> spec)
// AggressiveInlining
Vector256<double> vblendv<double>(Vector256<double> x, Vector256<double> y, Vector256<double> spec)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0040
    IL_001B: ldarg.0
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ldarg.1
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0027: ldarg.2
    IL_0028: call System.Runtime.Intrinsics.Vector256`1<System.Byte> zfunc::v8u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002D: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0032: stloc.0
    IL_0033: ldloca.s V_0
    IL_0035: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.Byte>&)
    IL_003A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_003F: ret
    IL_0040: ldtoken T
    IL_0045: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004A: ldtoken System.UInt16
    IL_004F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0054: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0059: brfalse.s IL_0080
    IL_005B: ldarg.0
    IL_005C: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0061: ldarg.1
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0067: ldarg.2
    IL_0068: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> zfunc::v16u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
    IL_0072: stloc.1
    IL_0073: ldloca.s V_1
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt16>&)
    IL_007A: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_007F: ret
    IL_0080: ldtoken T
    IL_0085: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008A: ldtoken System.UInt32
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0099: brfalse.s IL_00C0
    IL_009B: ldarg.0
    IL_009C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A1: ldarg.1
    IL_00A2: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A7: ldarg.2
    IL_00A8: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_00B2: stloc.2
    IL_00B3: ldloca.s V_2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_00BA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00BF: ret
    IL_00C0: ldtoken T
    IL_00C5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CA: ldtoken System.UInt64
    IL_00CF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D4: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D9: brfalse.s IL_0100
    IL_00DB: ldarg.0
    IL_00DC: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E1: ldarg.1
    IL_00E2: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00E7: ldarg.2
    IL_00E8: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00ED: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00F2: stloc.3
    IL_00F3: ldloca.s V_3
    IL_00F5: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00FA: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00FF: ret
    IL_0100: ldarg.0
    IL_0101: ldarg.1
    IL_0102: ldarg.2
    IL_0103: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vblendv_i<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0108: ret
}
------------------------------------------------------------------------------------------------------------------------
