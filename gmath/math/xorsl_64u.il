// Id := 100663661, Name := System.UInt64 Z0.math::xorsl(System.UInt64,System.Byte)
// ulong xorsl(ulong a, byte offset)
// AggressiveInlining
ulong xorsl(ulong a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 63
    IL_0005: and
    IL_0006: shl
    IL_0007: xor
    IL_0008: ret
}
