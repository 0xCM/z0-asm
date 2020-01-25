// Id := 100663578, Name := System.SByte Z0.math::select(System.SByte,System.SByte,System.SByte)
// sbyte select(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte select(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Int32 Z0.math::select(System.Int32,System.Int32,System.Int32)
    IL_0008: conv.i1
    IL_0009: ret
}
