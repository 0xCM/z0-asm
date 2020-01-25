// Id := 100663401, Name := System.UInt16 Z0.Bits::hi(System.UInt32)
// ushort hi(uint src)
// AggressiveInlining
ushort hi(uint src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 16
    IL_0003: shr.un
    IL_0004: conv.u2
    IL_0005: ret
}
