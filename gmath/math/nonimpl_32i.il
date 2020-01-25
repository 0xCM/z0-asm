// Id := 100663542, Name := System.Int32 Z0.math::nonimpl(System.Int32,System.Int32)
// int nonimpl(int a, int b)
// AggressiveInlining
int nonimpl(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
