// Id := 100663478, Name := Z0.Sign Z0.math::signum(System.Int32)
// Sign:int signum(int src)
// AggressiveInlining
Sign:int signum(int src)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.s 31
    IL_0003: shr
    IL_0004: ldarg.0
    IL_0005: call System.UInt32 Z0.math::negate(System.UInt32)
    IL_000A: ldc.i4.s 31
    IL_000C: shr.un
    IL_000D: or
    IL_000E: ret
}
