// Id := 100663636, Name := System.Int16 Z0.math::srl(System.Int16,System.Byte)
// Int16 srl(Int16 src, byte offset)
// AggressiveInlining
Int16 srl(Int16 src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::srl32i(System.Int32,System.Byte)
    IL_0007: conv.i2
    IL_0008: ret
}
