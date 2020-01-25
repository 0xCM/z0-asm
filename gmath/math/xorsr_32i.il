// Id := 100663666, Name := System.Int32 Z0.math::xorsr(System.Int32,System.Byte)
// int xorsr(int a, byte offset)
// AggressiveInlining
int xorsr(int a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shr
    IL_0007: xor
    IL_0008: ret
}
