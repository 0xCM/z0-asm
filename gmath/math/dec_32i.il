// Id := 100663351, Name := System.Int32 Z0.math::dec(System.Int32)
// int dec(int src)
// AggressiveInlining
int dec(int src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
