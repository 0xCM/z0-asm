// Id := 100663637, Name := System.UInt16 Z0.math::srl(System.UInt16,System.Byte)
// ushort srl(ushort src, byte offset)
// AggressiveInlining
ushort srl(ushort src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::srl32u(System.UInt32,System.Byte)
    IL_0007: conv.u2
    IL_0008: ret
}
