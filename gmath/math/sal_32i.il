// Id := 100663614, Name := System.Int32 Z0.math::sal(System.Int32,System.Byte)
// int sal(int src, byte offset)
// AggressiveInlining
int sal(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
