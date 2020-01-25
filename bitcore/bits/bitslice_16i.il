// Id := 100663347, Name := System.Int16 Z0.Bits::bitslice(System.Int16,System.Byte,System.Byte)
// Int16 bitslice(Int16 src, byte start, byte length)
// AggressiveInlining
Int16 bitslice(Int16 src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: conv.i2
    IL_0009: ret
}
