// Id := 100663517, Name := System.UInt16 Z0.math::cnonimpl(System.UInt16,System.UInt16)
// ushort cnonimpl(ushort a, ushort b)
// AggressiveInlining
ushort cnonimpl(ushort a, ushort b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.u2
    IL_0008: ret
}
