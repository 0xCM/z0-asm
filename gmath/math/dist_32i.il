// Id := 100663359, Name := System.UInt64 Z0.math::dist(System.Int32,System.Int32)
// ulong dist(int a, int b)
// AggressiveInlining
ulong dist(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bge.s IL_0009
    IL_0004: ldarg.1
    IL_0005: ldarg.0
    IL_0006: sub
    IL_0007: conv.i8
    IL_0008: ret
    IL_0009: ldarg.0
    IL_000A: ldarg.1
    IL_000B: sub
    IL_000C: conv.i8
    IL_000D: ret
}
