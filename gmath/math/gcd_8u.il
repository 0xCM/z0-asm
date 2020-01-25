// Id := 100663388, Name := System.Byte Z0.math::gcd(System.Byte,System.Byte)
// byte gcd(byte a, byte b)
// AggressiveInlining
byte gcd(byte a, byte b)
{
    IL_0000: br.s IL_0010
    IL_0002: ldarg.0
    IL_0003: ldarg.1
    IL_0004: call System.Byte Z0.math::mod(System.Byte,System.Byte)
    IL_0009: stloc.0
    IL_000A: ldarg.1
    IL_000B: starg.s a
    IL_000D: ldloc.0
    IL_000E: starg.s b
    IL_0010: ldarg.1
    IL_0011: brtrue.s IL_0002
    IL_0013: ldarg.0
    IL_0014: ret
}
