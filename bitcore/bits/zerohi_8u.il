// Id := 100663589, Name := System.Byte Z0.Bits::zerohi(System.Byte,System.Int32)
// byte zerohi(byte src, int index)
// AggressiveInlining
byte zerohi(byte src, int index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi2::ZeroHighBits(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
