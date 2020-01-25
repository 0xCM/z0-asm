// Id := 100663631, Name := System.UInt32 Z0.math::sll(System.UInt32,System.Byte)
// uint sll(uint src, byte offset)
// AggressiveInlining
uint sll(uint src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shl
    IL_0006: ret
}
