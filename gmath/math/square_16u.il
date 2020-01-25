// Id := 100663485, Name := System.UInt16 Z0.math::square(System.UInt16)
// ushort square(ushort src)
// AggressiveInlining
ushort square(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: call System.UInt16 Z0.math::mul(System.UInt16,System.UInt16)
    IL_0007: ret
}
