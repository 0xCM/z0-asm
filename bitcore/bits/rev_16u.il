// Id := 100663510, Name := System.UInt16 Z0.Bits::rev(System.UInt16)
// ushort rev(ushort src)
// AggressiveInlining
ushort rev(ushort src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Byte Z0.Bits::hi(System.UInt16)
    IL_0006: call System.Byte Z0.Bits::rev(System.Byte)
    IL_000B: ldarg.0
    IL_000C: call System.Byte Z0.Bits::lo(System.UInt16)
    IL_0011: call System.Byte Z0.Bits::rev(System.Byte)
    IL_0016: call System.UInt16 Z0.Bits::concat(System.Byte,System.Byte)
    IL_001B: ret
}
