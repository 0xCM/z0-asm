// Id := 100663379, Name := System.Int32 Z0.Bits::enable(System.Int32,System.Int32)
// int enable(int src, int pos)
// AggressiveInlining
int enable(int src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: or
    IL_0008: dup
    IL_0009: starg.s src
    IL_000B: ret
}
