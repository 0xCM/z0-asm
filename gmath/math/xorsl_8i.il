// Id := 100663655, Name := System.SByte Z0.math::xorsl(System.SByte,System.Byte)
// sbyte xorsl(sbyte a, byte offset)
// AggressiveInlining
sbyte xorsl(sbyte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::xorsl(System.Int32,System.Byte)
    IL_0007: conv.i1
    IL_0008: ret
}
