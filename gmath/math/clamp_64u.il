// Id := 100663346, Name := System.UInt64 Z0.math::clamp(System.UInt64,System.UInt64)
// ulong clamp(ulong src, ulong max)
// AggressiveInlining
ulong clamp(ulong src, ulong max)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.un.s IL_0006
    IL_0004: ldarg.0
    IL_0005: ret
    IL_0006: ldarg.1
    IL_0007: ret
}
