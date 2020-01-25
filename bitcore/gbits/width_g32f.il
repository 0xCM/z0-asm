// Id := 100663699, Name := System.Int32 Z0.gbits::width<T>(T)
// int width<float>(float src)
// AggressiveInlining
int width<float>(float src)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002A
    IL_001B: ldarg.0
    IL_001C: call System.Byte Z0.As::uint8<T>(T)
    IL_0021: stloc.0
    IL_0022: ldloca.s V_0
    IL_0024: call System.Int32 Z0.Bits::width(System.Byte&)
    IL_0029: ret
    IL_002A: ldtoken T
    IL_002F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0034: ldtoken System.UInt16
    IL_0039: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003E: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0043: brfalse.s IL_0054
    IL_0045: ldarg.0
    IL_0046: call System.UInt16 Z0.As::uint16<T>(T)
    IL_004B: stloc.1
    IL_004C: ldloca.s V_1
    IL_004E: call System.Int32 Z0.Bits::width(System.UInt16&)
    IL_0053: ret
    IL_0054: ldtoken T
    IL_0059: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005E: ldtoken System.UInt32
    IL_0063: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0068: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006D: brfalse.s IL_007B
    IL_006F: ldarg.0
    IL_0070: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0075: call System.Int32 Z0.Bits::width(System.UInt32)
    IL_007A: ret
    IL_007B: ldtoken T
    IL_0080: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0085: ldtoken System.UInt64
    IL_008A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_008F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0094: brfalse.s IL_00A2
    IL_0096: ldarg.0
    IL_0097: call System.UInt64 Z0.As::uint64<T>(T)
    IL_009C: call System.Int32 Z0.Bits::width(System.UInt64)
    IL_00A1: ret
    IL_00A2: ldstr "width"
    IL_00A7: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\width.g.cs"
    IL_00AC: ldc.i4.s 55
    IL_00AE: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00B3: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00B8: throw
}
