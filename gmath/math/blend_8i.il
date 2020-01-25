// Id := 100663586, Name := System.SByte Z0.math::blend(System.SByte,System.SByte,System.SByte)
// sbyte blend(sbyte a, sbyte b, sbyte mask)
// AggressiveInlining
sbyte blend(sbyte a, sbyte b, sbyte mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.SByte Z0.math::xor(System.SByte,System.SByte)
    IL_0008: ldarg.2
    IL_0009: call System.SByte Z0.math::and(System.SByte,System.SByte)
    IL_000E: call System.SByte Z0.math::xor(System.SByte,System.SByte)
    IL_0013: ret
}
