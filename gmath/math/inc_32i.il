// Id := 100663403, Name := System.Int32 Z0.math::inc(System.Int32)
// int inc(int src)
// AggressiveInlining
int inc(int src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: add
    IL_0003: dup
    IL_0004: starg.s src
    IL_0006: ret
}
