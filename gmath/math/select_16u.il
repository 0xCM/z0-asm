// Id := 100663581, Name := System.UInt16 Z0.math::select(System.UInt16,System.UInt16,System.UInt16)
// ushort select(ushort a, ushort b, ushort c)
// AggressiveInlining
ushort select(ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.math::select(System.UInt32,System.UInt32,System.UInt32)
    IL_0008: conv.u2
    IL_0009: ret
}
