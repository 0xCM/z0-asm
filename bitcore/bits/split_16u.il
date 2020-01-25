// Id := 100663553, Name := System.Byte Z0.Bits::split(System.UInt16,System.Byte&)
// byte split(ushort src, out byte x0)
// AggressiveInlining
byte split(ushort src, out byte x0)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: conv.u1
    IL_0003: stind.i1
    IL_0004: ldarg.0
    IL_0005: ldc.i4.8
    IL_0006: shr
    IL_0007: conv.u1
    IL_0008: ret
}
