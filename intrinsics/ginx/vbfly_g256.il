// Id := 100665581, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N1,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> vbfly<byte>(N1 n, Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vbfly<byte>(N1 n, Vector256<byte> x)
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
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
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
    IL_0057: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
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
    IL_008C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
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
    IL_00C1: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00C6: stloc.3
    IL_00C7: ldloca.s V_3
    IL_00C9: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00CE: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00D3: ret
    IL_00D4: ldstr "vbfly"
    IL_00D9: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00DE: ldc.i4 136
    IL_00E3: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E8: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00ED: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665581, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N1,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vbfly<ushort>(N1 n, Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vbfly<ushort>(N1 n, Vector256<ushort> x)
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
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
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
    IL_0057: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
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
    IL_008C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
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
    IL_00C1: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00C6: stloc.3
    IL_00C7: ldloca.s V_3
    IL_00C9: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00CE: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00D3: ret
    IL_00D4: ldstr "vbfly"
    IL_00D9: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00DE: ldc.i4 136
    IL_00E3: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E8: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00ED: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665581, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N1,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> vbfly<uint>(N1 n, Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbfly<uint>(N1 n, Vector256<uint> x)
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
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
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
    IL_0057: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
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
    IL_008C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
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
    IL_00C1: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00C6: stloc.3
    IL_00C7: ldloca.s V_3
    IL_00C9: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00CE: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00D3: ret
    IL_00D4: ldstr "vbfly"
    IL_00D9: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00DE: ldc.i4 136
    IL_00E3: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E8: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00ED: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665581, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N1,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vbfly<ulong>(N1 n, Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbfly<ulong>(N1 n, Vector256<ulong> x)
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
    IL_0022: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
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
    IL_0057: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt16>)
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
    IL_008C: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
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
    IL_00C1: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N1,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_00C6: stloc.3
    IL_00C7: ldloca.s V_3
    IL_00C9: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_00CE: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00D3: ret
    IL_00D4: ldstr "vbfly"
    IL_00D9: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00DE: ldc.i4 136
    IL_00E3: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00E8: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00ED: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665582, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N2,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> vbfly<byte>(N2 n, Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vbfly<byte>(N2 n, Vector256<byte> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665582, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N2,System.Runtime.Intrinsics.Vector256`1<T>)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665582, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N2,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> vbfly<uint>(N2 n, Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbfly<uint>(N2 n, Vector256<uint> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665582, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N2,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vbfly<ulong>(N2 n, Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbfly<ulong>(N2 n, Vector256<ulong> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665583, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N4,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> vbfly<byte>(N4 n, Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vbfly<byte>(N4 n, Vector256<byte> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665583, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N4,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vbfly<ushort>(N4 n, Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vbfly<ushort>(N4 n, Vector256<ushort> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665583, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N4,System.Runtime.Intrinsics.Vector256`1<T>)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665583, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N4,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vbfly<ulong>(N4 n, Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbfly<ulong>(N4 n, Vector256<ulong> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665584, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N8,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> vbfly<byte>(N8 n, Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vbfly<byte>(N8 n, Vector256<byte> x)
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
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_005F: stloc.0
    IL_0060: ldloca.s V_0
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0067: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_006C: ret
    IL_006D: ldtoken T
    IL_0072: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0077: ldtoken System.UInt64
    IL_007C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0081: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0086: brfalse.s IL_00A2
    IL_0088: ldarg.0
    IL_0089: ldarg.1
    IL_008A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008F: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0094: stloc.1
    IL_0095: ldloca.s V_1
    IL_0097: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_009C: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00A1: ret
    IL_00A2: ldstr "vbfly"
    IL_00A7: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00AC: ldc.i4 199
    IL_00B1: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B6: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00BB: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665584, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N8,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vbfly<ushort>(N8 n, Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vbfly<ushort>(N8 n, Vector256<ushort> x)
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
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_005F: stloc.0
    IL_0060: ldloca.s V_0
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0067: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_006C: ret
    IL_006D: ldtoken T
    IL_0072: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0077: ldtoken System.UInt64
    IL_007C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0081: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0086: brfalse.s IL_00A2
    IL_0088: ldarg.0
    IL_0089: ldarg.1
    IL_008A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008F: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0094: stloc.1
    IL_0095: ldloca.s V_1
    IL_0097: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_009C: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00A1: ret
    IL_00A2: ldstr "vbfly"
    IL_00A7: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00AC: ldc.i4 199
    IL_00B1: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B6: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00BB: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665584, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N8,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> vbfly<uint>(N8 n, Vector256<uint> x)
// AggressiveInlining
Vector256<uint> vbfly<uint>(N8 n, Vector256<uint> x)
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
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_005F: stloc.0
    IL_0060: ldloca.s V_0
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0067: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_006C: ret
    IL_006D: ldtoken T
    IL_0072: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0077: ldtoken System.UInt64
    IL_007C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0081: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0086: brfalse.s IL_00A2
    IL_0088: ldarg.0
    IL_0089: ldarg.1
    IL_008A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008F: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0094: stloc.1
    IL_0095: ldloca.s V_1
    IL_0097: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_009C: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00A1: ret
    IL_00A2: ldstr "vbfly"
    IL_00A7: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00AC: ldc.i4 199
    IL_00B1: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B6: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00BB: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665584, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N8,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vbfly<ulong>(N8 n, Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbfly<ulong>(N8 n, Vector256<ulong> x)
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
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> zfunc::v32u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: call System.Runtime.Intrinsics.Vector256`1<System.UInt32> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt32>)
    IL_005F: stloc.0
    IL_0060: ldloca.s V_0
    IL_0062: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt32>&)
    IL_0067: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_006C: ret
    IL_006D: ldtoken T
    IL_0072: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0077: ldtoken System.UInt64
    IL_007C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0081: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0086: brfalse.s IL_00A2
    IL_0088: ldarg.0
    IL_0089: ldarg.1
    IL_008A: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> zfunc::v64u<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008F: call System.Runtime.Intrinsics.Vector256`1<System.UInt64> Z0.dinx::vbfly(Z0.N8,System.Runtime.Intrinsics.Vector256`1<System.UInt64>)
    IL_0094: stloc.1
    IL_0095: ldloca.s V_1
    IL_0097: call System.Runtime.Intrinsics.Vector256`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector256`1<System.UInt64>&)
    IL_009C: ldobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_00A1: ret
    IL_00A2: ldstr "vbfly"
    IL_00A7: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\ops\\vbits\\bfly.g.cs"
    IL_00AC: ldc.i4 199
    IL_00B1: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B6: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00BB: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665585, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N16,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> vbfly<byte>(N16 n, Vector256<byte> x)
// AggressiveInlining
Vector256<byte> vbfly<byte>(N16 n, Vector256<byte> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665585, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N16,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> vbfly<ushort>(N16 n, Vector256<ushort> x)
// AggressiveInlining
Vector256<ushort> vbfly<ushort>(N16 n, Vector256<ushort> x)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665585, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N16,System.Runtime.Intrinsics.Vector256`1<T>)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100665585, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbfly<T>(Z0.N16,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vbfly<ulong>(N16 n, Vector256<ulong> x)
// AggressiveInlining
Vector256<ulong> vbfly<ulong>(N16 n, Vector256<ulong> x)
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
------------------------------------------------------------------------------------------------------------------------
