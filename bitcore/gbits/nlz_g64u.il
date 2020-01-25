// Id := 100663650, Name := System.Int32 Z0.gbits::nlz<T>(T)
// int nlz<ulong>(ulong src)
// AggressiveInlining
int nlz<ulong>(ulong src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0029
    IL_001B: ldarga.s src
    IL_001D: call System.Byte& Z0.AsIn::uint8<T>(T&)
    IL_0022: ldind.u1
    IL_0023: call System.Int32 Z0.Bits::nlz(System.Byte)
    IL_0028: ret
    IL_0029: ldtoken T
    IL_002E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0033: ldtoken System.UInt16
    IL_0038: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003D: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0042: brfalse.s IL_0052
    IL_0044: ldarga.s src
    IL_0046: call System.UInt16& Z0.AsIn::uint16<T>(T&)
    IL_004B: ldind.u2
    IL_004C: call System.Int32 Z0.Bits::nlz(System.UInt16)
    IL_0051: ret
    IL_0052: ldtoken T
    IL_0057: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005C: ldtoken System.UInt32
    IL_0061: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0066: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006B: brfalse.s IL_007B
    IL_006D: ldarga.s src
    IL_006F: call System.UInt32& Z0.AsIn::uint32<T>(T&)
    IL_0074: ldind.u4
    IL_0075: call System.Int32 Z0.Bits::nlz(System.UInt32)
    IL_007A: ret
    IL_007B: ldtoken T
    IL_0080: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0085: ldtoken System.UInt64
    IL_008A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0094: brfalse.s IL_00A4
    IL_0096: ldarga.s src
    IL_0098: call System.UInt64& Z0.AsIn::uint64<T>(T&)
    IL_009D: ldind.i8
    IL_009E: call System.Int32 Z0.Bits::nlz(System.UInt64)
    IL_00A3: ret
    IL_00A4: ldstr "nlz"
    IL_00A9: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\nlz.g.cs"
    IL_00AE: ldc.i4.s 32
    IL_00B0: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B5: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00BA: throw
}
