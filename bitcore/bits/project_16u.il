// Id := 100663499, Name := System.UInt16 Z0.Bits::project(System.UInt16,System.UInt16)
// ushort project(ushort src, ushort spec)
// AggressiveInlining
ushort project(ushort src, ushort spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 Z0.Bits::scatter(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
