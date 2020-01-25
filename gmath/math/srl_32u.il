// Id := 100663639, Name := System.UInt32 Z0.math::srl(System.UInt32,System.Byte)
// uint srl(uint src, byte offset)
// AggressiveInlining
uint srl(uint src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::srl32u(System.UInt32,System.Byte)
    IL_0007: ret
}
