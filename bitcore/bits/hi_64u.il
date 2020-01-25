// Id := 100663402, Name := System.UInt32 Z0.Bits::hi(System.UInt64)
// uint hi(ulong src)
// AggressiveInlining
uint hi(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 32
    IL_0003: shr.un
    IL_0004: conv.u4
    IL_0005: ret
}
