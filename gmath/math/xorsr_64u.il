// Id := 100663669, Name := System.UInt64 Z0.math::xorsr(System.UInt64,System.Byte)
// ulong xorsr(ulong a, byte offset)
// AggressiveInlining
ulong xorsr(ulong a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shr.un
    IL_0007: xor
    IL_0008: ret
}
