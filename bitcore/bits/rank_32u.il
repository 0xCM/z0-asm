// Id := 100663503, Name := System.UInt32 Z0.Bits::rank(System.UInt32,System.Int32)
// uint rank(uint src, int pos)
// AggressiveInlining
uint rank(uint src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.0
    IL_0002: ldarg.1
    IL_0003: conv.u1
    IL_0004: call System.UInt32 Z0.Bits::between(System.UInt32,System.Byte,System.Byte)
    IL_0009: call System.UInt32 Z0.Bits::pop(System.UInt32)
    IL_000E: ret
}
