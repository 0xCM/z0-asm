// Id := 100663638, Name := System.Int32 Z0.math::srl(System.Int32,System.Byte)
// int srl(int src, byte offset)
// AggressiveInlining
int srl(int src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::srl32i(System.Int32,System.Byte)
    IL_0007: ret
}
