// Id := 100663634, Name := System.SByte Z0.math::srl(System.SByte,System.Byte)
// sbyte srl(sbyte src, byte offset)
// AggressiveInlining
sbyte srl(sbyte src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::srl32i(System.Int32,System.Byte)
    IL_0007: conv.i1
    IL_0008: ret
}
