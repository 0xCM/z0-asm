// Id := 100663450, Name := System.Void Z0.Bits::part8x2(System.UInt32,System.Byte&)
// void part8x2(uint src, ref byte dst)
// AggressiveInlining
void part8x2(uint src, ref byte dst)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.0
    IL_0002: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0007: ldarg.0
    IL_0008: ldc.i4.3
    IL_0009: and
    IL_000A: conv.u1
    IL_000B: stind.i1
    IL_000C: ldarg.1
    IL_000D: ldc.i4.1
    IL_000E: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0013: ldarg.0
    IL_0014: ldc.i4.2
    IL_0015: shr.un
    IL_0016: ldc.i4.3
    IL_0017: and
    IL_0018: conv.u1
    IL_0019: stind.i1
    IL_001A: ldarg.1
    IL_001B: ldc.i4.2
    IL_001C: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_0021: ldarg.0
    IL_0022: ldc.i4.4
    IL_0023: shr.un
    IL_0024: ldc.i4.3
    IL_0025: and
    IL_0026: conv.u1
    IL_0027: stind.i1
    IL_0028: ldarg.1
    IL_0029: ldc.i4.3
    IL_002A: call System.Byte& zfunc::seek<System.Byte>(System.Byte&,System.Int32)
    IL_002F: ldarg.0
    IL_0030: ldc.i4.6
    IL_0031: shr.un
    IL_0032: ldc.i4.3
    IL_0033: and
    IL_0034: conv.u1
    IL_0035: stind.i1
    IL_0036: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100663451, Name := System.Void Z0.Bits::part8x2(System.Byte,System.Byte&)
// void part8x2(byte src, ref byte dst)
// AggressiveInlining
void part8x2(byte src, ref byte dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Void Z0.Bits::part8x2(System.UInt32,System.Byte&)
    IL_0007: ret
}
------------------------------------------------------------------------------------------------------------------------
