// Id := 100663415, Name := System.Byte Z0.Bits::lsbx(System.Byte)
// byte lsbx(byte src)
// AggressiveInlining
byte lsbx(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::ExtractLowestSetBit(System.UInt32)
    IL_0006: conv.u1
    IL_0007: ret
}
