// Id := 100663585, Name := System.Int32 Z0.Bits::width(System.Byte&)
// int width(in byte src)
// AggressiveInlining
int width(in byte src)
{
    IL_0000: ldc.i4.8
    IL_0001: ldarg.0
    IL_0002: ldind.u1
    IL_0003: call System.Int32 Z0.Bits::nlz(System.Byte)
    IL_0008: sub
    IL_0009: ret
}
