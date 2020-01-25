// Id := 100663582, Name := System.Void Z0.Bits::unpack16x1(System.UInt16,System.UInt64&)
// void unpack16x1(ushort src, ref ulong dst)
// AggressiveInlining
void unpack16x1(ushort src, ref ulong dst)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.0
    IL_0002: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_0007: ldarg.0
    IL_0008: conv.u8
    IL_0009: ldc.i8 72340172838076673
    IL_0012: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0017: stind.i8
    IL_0018: ldarg.1
    IL_0019: ldc.i4.1
    IL_001A: call System.UInt64& zfunc::seek<System.UInt64>(System.UInt64&,System.Int32)
    IL_001F: ldarg.0
    IL_0020: ldc.i4.8
    IL_0021: shr
    IL_0022: call System.UInt16 Z0.As::uint16<System.Int32>(System.Int32)
    IL_0027: conv.u8
    IL_0028: ldc.i8 72340172838076673
    IL_0031: call System.UInt64 Z0.Bits::scatter(System.UInt64,System.UInt64)
    IL_0036: stind.i8
    IL_0037: ret
}
