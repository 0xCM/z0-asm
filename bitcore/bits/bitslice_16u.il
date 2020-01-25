// Id := 100663348, Name := System.UInt16 Z0.Bits::bitslice(System.UInt16,System.Byte,System.Byte)
// ushort bitslice(ushort src, byte start, byte length)
// AggressiveInlining
ushort bitslice(ushort src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: conv.u2
    IL_0009: ret
}
