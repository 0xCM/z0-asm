// Id := 100663656, Name := System.UInt16 Z0.math::xorsl(System.UInt16,System.Byte)
// ushort xorsl(ushort a, byte offset)
// AggressiveInlining
ushort xorsl(ushort a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.math::xorsl(System.UInt32,System.Byte)
    IL_0007: conv.u2
    IL_0008: ret
}
