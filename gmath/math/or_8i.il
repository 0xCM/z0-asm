// Id := 100663570, Name := System.SByte Z0.math::or(System.SByte,System.SByte,System.SByte)
// sbyte or(sbyte a, sbyte b, sbyte c)
// AggressiveInlining
sbyte or(sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: or
    IL_0003: ldarg.2
    IL_0004: or
    IL_0005: conv.i1
    IL_0006: ret
}
