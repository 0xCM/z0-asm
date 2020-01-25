// Id := 100663539, Name := System.Byte Z0.math::nonimpl(System.Byte,System.Byte)
// byte nonimpl(byte a, byte b)
// AggressiveInlining
byte nonimpl(byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.u1
    IL_0008: ret
}
