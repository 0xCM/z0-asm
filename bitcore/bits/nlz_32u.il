// Id := 100663433, Name := System.Int32 Z0.Bits::nlz(System.UInt32)
// int nlz(uint src)
// AggressiveInlining
int nlz(uint src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt32 System.Runtime.Intrinsics.X86.Lzcnt::LeadingZeroCount(System.UInt32)
    IL_0006: ret
}
