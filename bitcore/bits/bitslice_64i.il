// Id := 100663351, Name := System.Int64 Z0.Bits::bitslice(System.Int64,System.Byte,System.Byte)
// long bitslice(long src, byte start, byte length)
// AggressiveInlining
long bitslice(long src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt64 System.Runtime.Intrinsics.X86.Bmi1/X64::BitFieldExtract(System.UInt64,System.Byte,System.Byte)
    IL_0008: ret
}
