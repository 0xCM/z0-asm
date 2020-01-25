// Id := 100663666, Name := T Z0.gbits::rotl<T>(T,System.Int32,System.Int32)
// uint rotl<uint>(uint src, int shift, int width)
// AggressiveInlining
uint rotl<uint>(uint src, int shift, int width)
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
    IL_0023: call System.Byte Z0.Bits::rotl(System.Byte,System.Int32,System.Int32)
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
    IL_0051: call System.UInt16 Z0.Bits::rotl(System.UInt16,System.Int32,System.Int32)
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
    IL_007F: call System.UInt32 Z0.Bits::rotl(System.UInt32,System.Int32,System.Int32)
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
    IL_00AD: call System.UInt64 Z0.Bits::rotl(System.UInt64,System.Int32,System.Int32)
    IL_00B2: call T Z0.As::generic<T>(System.UInt64)
    IL_00B7: ret
    IL_00B8: ldstr "rotl"
    IL_00BD: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\rotl.g.cs"
    IL_00C2: ldc.i4.s 73
    IL_00C4: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00C9: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CE: throw
}
