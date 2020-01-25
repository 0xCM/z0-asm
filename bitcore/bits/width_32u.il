// Id := 100663587, Name := System.Int32 Z0.Bits::width(System.UInt32)
// int width(uint src)
// AggressiveInlining
int width(uint src)
{
    IL_0000: ldc.i4.s 32
    IL_0002: ldarg.0
    IL_0003: call System.Int32 Z0.Bits::nlz(System.UInt32)
    IL_0008: sub
    IL_0009: ret
}
