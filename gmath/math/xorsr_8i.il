// Id := 100663663, Name := System.SByte Z0.math::xorsr(System.SByte,System.Byte)
// sbyte xorsr(sbyte a, byte offset)
// AggressiveInlining
sbyte xorsr(sbyte a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::xorsr(System.Int32,System.Byte)
    IL_0007: conv.i1
    IL_0008: ret
}
