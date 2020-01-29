// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<byte> vincrements<byte>(N128 w)
// AggressiveInlining
Vector128<byte> vincrements<byte>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<sbyte> vincrements<sbyte>(N128 w)
// AggressiveInlining
Vector128<sbyte> vincrements<sbyte>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<ushort> vincrements<ushort>(N128 w)
// AggressiveInlining
Vector128<ushort> vincrements<ushort>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<short> vincrements<short>(N128 w)
// AggressiveInlining
Vector128<short> vincrements<short>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<uint> vincrements<uint>(N128 w)
// AggressiveInlining
Vector128<uint> vincrements<uint>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<int> vincrements<int>(N128 w)
// AggressiveInlining
Vector128<int> vincrements<int>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<ulong> vincrements<ulong>(N128 w)
// AggressiveInlining
Vector128<ulong> vincrements<ulong>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100666392, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::vincrements<T>(Z0.N128)
// Vector128<long> vincrements<long>(N128 w)
// AggressiveInlining
Vector128<long> vincrements<long>(N128 w)
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
    IL_0037: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x8u()
    IL_003C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
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
    IL_0079: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x16u()
    IL_007E: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0083: ret
    IL_0084: ldtoken T
    IL_0089: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008E: ldtoken System.UInt32
    IL_0093: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0098: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_009D: brtrue.s IL_00D5
    IL_009F: ldtoken T
    IL_00A4: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00A9: ldtoken System.Int32
    IL_00AE: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00B3: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00B8: brtrue.s IL_00D5
    IL_00BA: ldtoken T
    IL_00BF: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00C4: ldtoken System.Single
    IL_00C9: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00CE: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00D3: brfalse.s IL_00E1
    IL_00D5: ldarg.0
    IL_00D6: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x32u()
    IL_00DB: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_00E0: ret
    IL_00E1: ldtoken T
    IL_00E6: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00EB: ldtoken System.UInt64
    IL_00F0: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_00F5: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00FA: brtrue.s IL_0117
    IL_00FC: ldtoken T
    IL_0101: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0106: ldtoken System.Int64
    IL_010B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0110: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0115: brfalse.s IL_0123
    IL_0117: ldarg.0
    IL_0118: call System.ReadOnlySpan`1<System.Byte> Z0.Data::get_Inc128x64u()
    IL_011D: call System.Runtime.Intrinsics.Vector128`1<T> Z0.VPattern::load<T>(Z0.N128,System.ReadOnlySpan`1<System.Byte>)
    IL_0122: ret
    IL_0123: ldstr "vincrements"
    IL_0128: ldstr "J:\\dev\\projects\\z0\\intrinsics\\src\\topics\\patterns\\increments.cs"
    IL_012D: ldc.i4.s 38
    IL_012F: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_0134: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_0139: throw
}
------------------------------------------------------------------------------------------------------------------------
