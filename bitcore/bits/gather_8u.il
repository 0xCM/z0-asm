// Id := 100663395, Name := System.Byte Z0.Bits::gather(System.Byte,System.Byte)
// byte gather(byte src, byte mask)
// AggressiveInlining
byte gather(byte src, byte mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitExtract(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
