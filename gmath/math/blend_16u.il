// Id := 100663589, Name := System.UInt16 Z0.math::blend(System.UInt16,System.UInt16,System.UInt16)
// ushort blend(ushort a, ushort b, ushort mask)
// AggressiveInlining
ushort blend(ushort a, ushort b, ushort mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.UInt16 Z0.math::xor(System.UInt16,System.UInt16)
    IL_0008: ldarg.2
    IL_0009: call System.UInt16 Z0.math::and(System.UInt16,System.UInt16)
    IL_000E: call System.UInt16 Z0.math::xor(System.UInt16,System.UInt16)
    IL_0013: ret
}
