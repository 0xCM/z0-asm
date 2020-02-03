// System.Void Z0.gbits::rotr<T>(T&,System.Int32,T&,System.Int32)
// void rotr<byte>(in byte src, int shift, ref byte dst, int count)
// AggressiveInlining
void rotr<byte>(in byte src, int shift, ref byte dst, int count)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0026
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0012: ldobj T
    IL_0017: ldarg.1
    IL_0018: call T Z0.gbits::rotr<T>(T,System.Int32)
    IL_001D: stobj T
    IL_0022: ldloc.0
    IL_0023: ldc.i4.1
    IL_0024: add
    IL_0025: stloc.0
    IL_0026: ldloc.0
    IL_0027: ldarg.3
    IL_0028: blt.s IL_0004
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::rotr<T>(T&,System.Int32,T&,System.Int32)
// void rotr<ushort>(in ushort src, int shift, ref ushort dst, int count)
// AggressiveInlining
void rotr<ushort>(in ushort src, int shift, ref ushort dst, int count)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0026
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0012: ldobj T
    IL_0017: ldarg.1
    IL_0018: call T Z0.gbits::rotr<T>(T,System.Int32)
    IL_001D: stobj T
    IL_0022: ldloc.0
    IL_0023: ldc.i4.1
    IL_0024: add
    IL_0025: stloc.0
    IL_0026: ldloc.0
    IL_0027: ldarg.3
    IL_0028: blt.s IL_0004
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::rotr<T>(T&,System.Int32,T&,System.Int32)
// void rotr<uint>(in uint src, int shift, ref uint dst, int count)
// AggressiveInlining
void rotr<uint>(in uint src, int shift, ref uint dst, int count)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0026
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0012: ldobj T
    IL_0017: ldarg.1
    IL_0018: call T Z0.gbits::rotr<T>(T,System.Int32)
    IL_001D: stobj T
    IL_0022: ldloc.0
    IL_0023: ldc.i4.1
    IL_0024: add
    IL_0025: stloc.0
    IL_0026: ldloc.0
    IL_0027: ldarg.3
    IL_0028: blt.s IL_0004
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.Void Z0.gbits::rotr<T>(T&,System.Int32,T&,System.Int32)
// void rotr<ulong>(in ulong src, int shift, ref ulong dst, int count)
// AggressiveInlining
void rotr<ulong>(in ulong src, int shift, ref ulong dst, int count)
{
    IL_0000: ldc.i4.0
    IL_0001: stloc.0
    IL_0002: br.s IL_0026
    IL_0004: ldarg.2
    IL_0005: ldloc.0
    IL_0006: call T& zfunc::seek<T>(T&,System.Int32)
    IL_000B: ldarg.0
    IL_000C: ldloc.0
    IL_000D: call T& modreq(System.Runtime.InteropServices.InAttribute) zfunc::skip<T>(T&,System.Int32)
    IL_0012: ldobj T
    IL_0017: ldarg.1
    IL_0018: call T Z0.gbits::rotr<T>(T,System.Int32)
    IL_001D: stobj T
    IL_0022: ldloc.0
    IL_0023: ldc.i4.1
    IL_0024: add
    IL_0025: stloc.0
    IL_0026: ldloc.0
    IL_0027: ldarg.3
    IL_0028: blt.s IL_0004
    IL_002A: ret
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32)
// byte rotr<byte>(byte src, int shift)
// AggressiveInlining
byte rotr<byte>(byte src, int shift)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "rotr"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00BE: ldc.i4.s 51
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32)
// ushort rotr<ushort>(ushort src, int shift)
// AggressiveInlining
ushort rotr<ushort>(ushort src, int shift)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "rotr"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00BE: ldc.i4.s 51
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32)
// uint rotr<uint>(uint src, int shift)
// AggressiveInlining
uint rotr<uint>(uint src, int shift)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "rotr"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00BE: ldc.i4.s 51
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32)
// ulong rotr<ulong>(ulong src, int shift)
// AggressiveInlining
ulong rotr<ulong>(ulong src, int shift)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002D
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32)
    IL_0027: call T Z0.As::generic<T>(System.Byte)
    IL_002C: ret
    IL_002D: ldtoken T
    IL_0032: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0037: ldtoken System.UInt16
    IL_003C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0041: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0046: brfalse.s IL_005A
    IL_0048: ldarg.0
    IL_0049: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004E: ldarg.1
    IL_004F: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32)
    IL_0054: call T Z0.As::generic<T>(System.UInt16)
    IL_0059: ret
    IL_005A: ldtoken T
    IL_005F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0064: ldtoken System.UInt32
    IL_0069: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0073: brfalse.s IL_0087
    IL_0075: ldarg.0
    IL_0076: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007B: ldarg.1
    IL_007C: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32)
    IL_0081: call T Z0.As::generic<T>(System.UInt32)
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B4
    IL_00A2: ldarg.0
    IL_00A3: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A8: ldarg.1
    IL_00A9: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32)
    IL_00AE: call T Z0.As::generic<T>(System.UInt64)
    IL_00B3: ret
    IL_00B4: ldstr "rotr"
    IL_00B9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00BE: ldc.i4.s 51
    IL_00C0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CA: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32,System.Int32)
// byte rotr<byte>(byte src, int shift, int width)
// AggressiveInlining
byte rotr<byte>(byte src, int shift, int width)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32,System.Int32)
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005C
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldarg.1
    IL_0050: ldarg.2
    IL_0051: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32,System.Int32)
    IL_0056: call T Z0.As::generic<T>(System.UInt16)
    IL_005B: ret
    IL_005C: ldtoken T
    IL_0061: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0066: ldtoken System.UInt32
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0075: brfalse.s IL_008A
    IL_0077: ldarg.0
    IL_0078: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007D: ldarg.1
    IL_007E: ldarg.2
    IL_007F: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32,System.Int32)
    IL_0084: call T Z0.As::generic<T>(System.UInt32)
    IL_0089: ret
    IL_008A: ldtoken T
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: ldtoken System.UInt64
    IL_0099: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A3: brfalse.s IL_00B8
    IL_00A5: ldarg.0
    IL_00A6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32,System.Int32)
    IL_00B2: call T Z0.As::generic<T>(System.UInt64)
    IL_00B7: ret
    IL_00B8: ldstr "rotr"
    IL_00BD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00C2: ldc.i4.s 73
    IL_00C4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CE: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32,System.Int32)
// ushort rotr<ushort>(ushort src, int shift, int width)
// AggressiveInlining
ushort rotr<ushort>(ushort src, int shift, int width)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32,System.Int32)
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005C
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldarg.1
    IL_0050: ldarg.2
    IL_0051: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32,System.Int32)
    IL_0056: call T Z0.As::generic<T>(System.UInt16)
    IL_005B: ret
    IL_005C: ldtoken T
    IL_0061: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0066: ldtoken System.UInt32
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0075: brfalse.s IL_008A
    IL_0077: ldarg.0
    IL_0078: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007D: ldarg.1
    IL_007E: ldarg.2
    IL_007F: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32,System.Int32)
    IL_0084: call T Z0.As::generic<T>(System.UInt32)
    IL_0089: ret
    IL_008A: ldtoken T
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: ldtoken System.UInt64
    IL_0099: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A3: brfalse.s IL_00B8
    IL_00A5: ldarg.0
    IL_00A6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32,System.Int32)
    IL_00B2: call T Z0.As::generic<T>(System.UInt64)
    IL_00B7: ret
    IL_00B8: ldstr "rotr"
    IL_00BD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00C2: ldc.i4.s 73
    IL_00C4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CE: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32,System.Int32)
// uint rotr<uint>(uint src, int shift, int width)
// AggressiveInlining
uint rotr<uint>(uint src, int shift, int width)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32,System.Int32)
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005C
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldarg.1
    IL_0050: ldarg.2
    IL_0051: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32,System.Int32)
    IL_0056: call T Z0.As::generic<T>(System.UInt16)
    IL_005B: ret
    IL_005C: ldtoken T
    IL_0061: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0066: ldtoken System.UInt32
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0075: brfalse.s IL_008A
    IL_0077: ldarg.0
    IL_0078: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007D: ldarg.1
    IL_007E: ldarg.2
    IL_007F: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32,System.Int32)
    IL_0084: call T Z0.As::generic<T>(System.UInt32)
    IL_0089: ret
    IL_008A: ldtoken T
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: ldtoken System.UInt64
    IL_0099: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A3: brfalse.s IL_00B8
    IL_00A5: ldarg.0
    IL_00A6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32,System.Int32)
    IL_00B2: call T Z0.As::generic<T>(System.UInt64)
    IL_00B7: ret
    IL_00B8: ldstr "rotr"
    IL_00BD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00C2: ldc.i4.s 73
    IL_00C4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CE: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gbits::rotr<T>(T,System.Int32,System.Int32)
// ulong rotr<ulong>(ulong src, int shift, int width)
// AggressiveInlining
ulong rotr<ulong>(ulong src, int shift, int width)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002E
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: ldarg.1
    IL_0022: ldarg.2
    IL_0023: call System.Byte Z0.Bits::rotr(System.Byte,System.Int32,System.Int32)
    IL_0028: call T Z0.As::generic<T>(System.Byte)
    IL_002D: ret
    IL_002E: ldtoken T
    IL_0033: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0038: ldtoken System.UInt16
    IL_003D: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0042: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0047: brfalse.s IL_005C
    IL_0049: ldarg.0
    IL_004A: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004F: ldarg.1
    IL_0050: ldarg.2
    IL_0051: call System.UInt16 Z0.Bits::rotr(System.UInt16,System.Int32,System.Int32)
    IL_0056: call T Z0.As::generic<T>(System.UInt16)
    IL_005B: ret
    IL_005C: ldtoken T
    IL_0061: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0066: ldtoken System.UInt32
    IL_006B: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0070: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0075: brfalse.s IL_008A
    IL_0077: ldarg.0
    IL_0078: call System.UInt32 Z0.As::uint32<T>(T)
    IL_007D: ldarg.1
    IL_007E: ldarg.2
    IL_007F: call System.UInt32 Z0.Bits::rotr(System.UInt32,System.Int32,System.Int32)
    IL_0084: call T Z0.As::generic<T>(System.UInt32)
    IL_0089: ret
    IL_008A: ldtoken T
    IL_008F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0094: ldtoken System.UInt64
    IL_0099: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A3: brfalse.s IL_00B8
    IL_00A5: ldarg.0
    IL_00A6: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.UInt64 Z0.Bits::rotr(System.UInt64,System.Int32,System.Int32)
    IL_00B2: call T Z0.As::generic<T>(System.UInt64)
    IL_00B7: ret
    IL_00B8: ldstr "rotr"
    IL_00BD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotr.g.cs"
    IL_00C2: ldc.i4.s 73
    IL_00C4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CE: throw
}
------------------------------------------------------------------------------------------------------------------------
