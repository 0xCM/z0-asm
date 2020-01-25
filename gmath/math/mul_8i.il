// Id := 100663439, Name := System.SByte Z0.math::mul(System.SByte,System.SByte)
// sbyte mul(sbyte a, sbyte rhs)
// AggressiveInlining
sbyte mul(sbyte a, sbyte rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: conv.i1
    IL_0004: ret
}
