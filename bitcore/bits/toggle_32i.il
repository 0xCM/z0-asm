// Id := 100663569, Name := System.Int32 Z0.Bits::toggle(System.Int32,System.Int32)
// int toggle(int src, int pos)
// AggressiveInlining
int toggle(int src, int pos)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: xor
    IL_0008: dup
    IL_0009: starg.s src
    IL_000B: ret
}
