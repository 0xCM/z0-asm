// Id := 100663649, Name := System.Int16 Z0.math::xors(System.Int16,System.Byte)
// Int16 xors(Int16 a, byte offset)
// AggressiveInlining
Int16 xors(Int16 a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: conv.u2
    IL_0002: ldarg.1
    IL_0003: call System.UInt16 Z0.math::xors(System.UInt16,System.Byte)
    IL_0008: conv.i2
    IL_0009: ret
}
