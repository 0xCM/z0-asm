// Id := 100663529, Name := System.Byte Z0.Bits::scatter(System.Byte,System.Byte)
// byte scatter(byte src, byte mask)
// AggressiveInlining
byte scatter(byte src, byte mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ParallelBitDeposit(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
