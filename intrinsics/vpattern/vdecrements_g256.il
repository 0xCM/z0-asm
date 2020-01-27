// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<byte> vdecrements<byte>(N256 w)
// AggressiveInlining
Vector256<byte> vdecrements<byte>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<sbyte> vdecrements<sbyte>(N256 w)
// AggressiveInlining
Vector256<sbyte> vdecrements<sbyte>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<ushort> vdecrements<ushort>(N256 w)
// AggressiveInlining
Vector256<ushort> vdecrements<ushort>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<short> vdecrements<short>(N256 w)
// AggressiveInlining
Vector256<short> vdecrements<short>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<uint> vdecrements<uint>(N256 w)
// AggressiveInlining
Vector256<uint> vdecrements<uint>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<int> vdecrements<int>(N256 w)
// AggressiveInlining
Vector256<int> vdecrements<int>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<ulong> vdecrements<ulong>(N256 w)
// AggressiveInlining
Vector256<ulong> vdecrements<ulong>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::vdecrements<T>(Z0.N256)
// Vector256<long> vdecrements<long>(N256 w)
// AggressiveInlining
Vector256<long> vdecrements<long>(N256 w)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brtrue.s IL_0036
    IL_001B: ldtoken T
    IL_0020: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0025: ldtoken System.SByte
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0034: brfalse.s IL_0042
    IL_0036: ldarg.0
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0041: ret
    IL_0042: ldtoken T
    IL_0047: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_004C: ldtoken System.UInt16
    IL_0051: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0056: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_005B: brtrue.s IL_0078
    IL_005D: ldtoken T
    IL_0062: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0067: ldtoken System.Int16
    IL_006C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0071: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0076: brfalse.s IL_0084
    IL_0078: ldarg.0
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00BA
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brfalse.s IL_00C6
    IL_00BA: ldarg.0
    IL_00BB: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x32u()
    IL_00C0: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_00C5: ret
    IL_00C6: ldtoken T
    IL_00CB: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00D0: ldtoken System.UInt64
    IL_00D5: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00DA: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00DF: brtrue.s IL_00FC
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.Int64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brfalse.s IL_0108
    IL_00FC: ldarg.0
    IL_00FD: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Dec256x64u()
    IL_0102: call System.Runtime.Intrinsics.Vector256`1<T> Z0.VPattern::load<T>(Z0.N256,System.ReadOnlySpan`1<System.Byte>)
    IL_0107: ret
    IL_0108: ldstr "vdecrements"
    IL_010D: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\decrements.cs"
    IL_0112: ldc.i4.s 56
    IL_0114: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0119: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_011E: throw
}
------------------------------------------------------------------------------------------------------------------------
