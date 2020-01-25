// Id := 100663502, Name := System.UInt32 Z0.Bits::rank(System.UInt16,System.Int32)
// uint rank(ushort src, int pos)
// AggressiveInlining
uint rank(ushort src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: ldarg.1
    IL_0003: conv.u1
    IL_0004: call System.UInt16 Z0.Bits::between(System.UInt16,System.Byte,System.Byte)
    IL_0009: call System.UInt32 Z0.Bits::pop(System.UInt16)
    IL_000E: ret
}
