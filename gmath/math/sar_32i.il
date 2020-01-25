// Id := 100663622, Name := System.Int32 Z0.math::sar(System.Int32,System.Byte)
// int sar(int src, byte offset)
// AggressiveInlining
int sar(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr
    IL_0006: ret
}
