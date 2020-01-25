// Id := 100663642, Name := System.Int32 Z0.math::srl32i(System.Int32,System.Byte)
// int srl32i(int src, byte offset)
// AggressiveInlining
int srl32i(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ret
}
