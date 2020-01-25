// Id := 100663519, Name := System.UInt32 Z0.math::cnonimpl(System.UInt32,System.UInt32)
// uint cnonimpl(uint a, uint b)
// AggressiveInlining
uint cnonimpl(uint a, uint b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
