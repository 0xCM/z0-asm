// Id := 100663611, Name := T Z0.gbits::clearbyte<T>(T,System.Byte)
// uint clearbyte<uint>(uint src, byte index)
// AggressiveInlining
uint clearbyte<uint>(uint src, byte index)
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_0025
    IL_001B: ldloca.s V_0
    IL_001D: initobj T
    IL_0023: ldloc.0
    IL_0024: ret
    IL_0025: ldtoken T
    IL_002A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_002F: ldtoken System.UInt16
    IL_0034: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0039: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_003E: brfalse.s IL_0052
    IL_0040: ldarg.0
    IL_0041: call System.UInt16 Z0.As::uint16<T>(T)
    IL_0046: ldarg.1
    IL_0047: call System.UInt16 Z0.Bits::clearbyte(System.UInt16,System.Byte)
    IL_004C: call T Z0.As::generic<T>(System.UInt16)
    IL_0051: ret
    IL_0052: ldtoken T
    IL_0057: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_005C: ldtoken System.UInt32
    IL_0061: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0066: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_006B: brfalse.s IL_007F
    IL_006D: ldarg.0
    IL_006E: call System.UInt32 Z0.As::uint32<T>(T)
    IL_0073: ldarg.1
    IL_0074: call System.UInt32 Z0.Bits::clearbyte(System.UInt32,System.Byte)
    IL_0079: call T Z0.As::generic<T>(System.UInt32)
    IL_007E: ret
    IL_007F: ldtoken T
    IL_0084: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0089: ldtoken System.UInt64
    IL_008E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0093: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0098: brfalse.s IL_00AC
    IL_009A: ldarg.0
    IL_009B: call System.UInt64 Z0.As::uint64<T>(T)
    IL_00A0: ldarg.1
    IL_00A1: call System.UInt64 Z0.Bits::clearbyte(System.UInt64,System.Byte)
    IL_00A6: call T Z0.As::generic<T>(System.UInt64)
    IL_00AB: ret
    IL_00AC: ldstr "clearbyte"
    IL_00B1: ldstr "J:\\dev\\projects\\z0\\bitcore\\src\\core\\bitclear.g.cs"
    IL_00B6: ldc.i4.s 80
    IL_00B8: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00BD: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00C2: throw
}
