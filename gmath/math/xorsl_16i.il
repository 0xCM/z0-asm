// Id := 100663657, Name := System.Int16 Z0.math::xorsl(System.Int16,System.Byte)
// Int16 xorsl(Int16 a, byte offset)
// AggressiveInlining
Int16 xorsl(Int16 a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::xorsl(System.Int32,System.Byte)
    IL_0007: conv.i2
    IL_0008: ret
}
