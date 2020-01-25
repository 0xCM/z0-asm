// Id := 100663500, Name := System.UInt16 Z0.Bits::select(System.UInt16,System.UInt16)
// ushort select(ushort src, ushort spec)
// AggressiveInlining
ushort select(ushort src, ushort spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::gather(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
