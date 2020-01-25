// Id := 100663659, Name := System.UInt32 Z0.math::xorsl(System.UInt32,System.Byte)
// uint xorsl(uint a, byte offset)
// AggressiveInlining
uint xorsl(uint a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: ldc.i4.s 31
    IL_0005: and
    IL_0006: shl
    IL_0007: xor
    IL_0008: ret
}
