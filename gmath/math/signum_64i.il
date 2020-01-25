// Id := 100663480, Name := Z0.Sign Z0.math::signum(System.Int64)
// Sign:int signum(long src)
// AggressiveInlining
Sign:int signum(long src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 63
    IL_0003: shr
    IL_0004: ldarg.0
    IL_0005: call System.UInt64 Z0.math::negate(System.UInt64)
    IL_000A: ldc.i4.s 63
    IL_000C: shr.un
    IL_000D: or
    IL_000E: conv.i4
    IL_000F: ret
}
