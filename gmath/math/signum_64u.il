// Id := 100663481, Name := Z0.Sign Z0.math::signum(System.UInt64)
// Sign:int signum(ulong src)
// AggressiveInlining
Sign:int signum(ulong src)
{
    IL_0000: ldarg.0
    IL_0001: brtrue.s IL_0005
    IL_0003: ldc.i4.m1
    IL_0004: ret
    IL_0005: ldc.i4.1
    IL_0006: ret
}
