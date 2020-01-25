// Id := 100663346, Name := System.Byte Z0.Bits::bitslice(System.Byte,System.Byte,System.Byte)
// byte bitslice(byte src, byte start, byte length)
// AggressiveInlining
byte bitslice(byte src, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::BitFieldExtract(System.UInt32,System.Byte,System.Byte)
    IL_0008: conv.u1
    IL_0009: ret
}
