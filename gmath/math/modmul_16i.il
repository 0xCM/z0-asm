// Id := 100663431, Name := System.Int16 Z0.math::modmul(System.Int16,System.Int16,System.Int16)
// Int16 modmul(Int16 a, Int16 b, Int16 m)
// AggressiveInlining
Int16 modmul(Int16 a, Int16 b, Int16 m)
{
    IL_0000: ldarg.0
    IL_0001: conv.i8
    IL_0002: ldarg.1
    IL_0003: conv.i8
    IL_0004: ldarg.2
    IL_0005: conv.i8
    IL_0006: call System.Int64 Z0.math::modmul(System.Int64,System.Int64,System.Int64)
    IL_000B: conv.i2
    IL_000C: ret
}
