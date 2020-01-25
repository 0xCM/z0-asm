// Id := 100663615, Name := System.UInt32 Z0.math::sal(System.UInt32,System.Byte)
// uint sal(uint src, byte offset)
// AggressiveInlining
uint sal(uint src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
