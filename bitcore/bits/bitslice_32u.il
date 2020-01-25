// Id := 100663350, Name := System.UInt32 Z0.Bits::bitslice(System.UInt32,System.Byte,System.Byte)
// uint bitslice(uint src, byte start, byte length)
// AggressiveInlining
uint bitslice(uint src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: ret
}
