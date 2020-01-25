// Id := 100663630, Name := System.Int32 Z0.math::sll(System.Int32,System.Byte)
// int sll(int src, byte offset)
// AggressiveInlining
int sll(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
