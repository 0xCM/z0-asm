// Id := 100663411, Name := System.Byte Z0.Bits::lsboff(System.Byte)
// byte lsboff(byte src)
// AggressiveInlining
byte lsboff(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ResetLowestSetBit(System.UInt32)
    IL_0006: conv.u1
    IL_0007: ret
}
