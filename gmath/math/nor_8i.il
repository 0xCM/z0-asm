// Id := 100663546, Name := System.SByte Z0.math::nor(System.SByte,System.SByte)
// sbyte nor(sbyte a, sbyte b)
// AggressiveInlining
sbyte nor(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.SByte Z0.math::or(System.SByte,System.SByte)
    IL_0007: call System.SByte Z0.math::not(System.SByte)
    IL_000C: ret
}
