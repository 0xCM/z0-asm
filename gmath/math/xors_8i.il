// Id := 100663647, Name := System.SByte Z0.math::xors(System.SByte,System.Byte)
// sbyte xors(sbyte a, byte offset)
// AggressiveInlining
sbyte xors(sbyte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: conv.u1
    IL_0002: ldarg.1
    IL_0003: call System.Byte Z0.math::xors(System.Byte,System.Byte)
    IL_0008: conv.i1
    IL_0009: ret
}
