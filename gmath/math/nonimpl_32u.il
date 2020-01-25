// Id := 100663543, Name := System.UInt32 Z0.math::nonimpl(System.UInt32,System.UInt32)
// uint nonimpl(uint a, uint b)
// AggressiveInlining
uint nonimpl(uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
