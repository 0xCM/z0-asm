// Id := 100663518, Name := System.Int32 Z0.math::cnonimpl(System.Int32,System.Int32)
// int cnonimpl(int a, int b)
// AggressiveInlining
int cnonimpl(int a, int b)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: ret
}
