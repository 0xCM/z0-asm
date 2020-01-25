// Id := 100663349, Name := System.Int32 Z0.Bits::bitslice(System.Int32,System.Byte,System.Byte)
// int bitslice(int src, byte start, byte length)
// AggressiveInlining
int bitslice(int src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: ret
}
