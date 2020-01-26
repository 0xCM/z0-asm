// Id := 100663643, Name := System.UInt32 Z0.math::srl32u(System.UInt32,System.Byte)
// uint srl32u(uint src, byte offset)
// AggressiveInlining
uint srl32u(uint src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldc.i4.s 31
    IL_0004: and
    IL_0005: shr.un
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
