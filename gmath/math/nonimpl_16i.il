// Id := 100663540, Name := System.Int16 Z0.math::nonimpl(System.Int16,System.Int16)
// Int16 nonimpl(Int16 a, Int16 b)
// AggressiveInlining
Int16 nonimpl(Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.i2
    IL_0008: ret
}
