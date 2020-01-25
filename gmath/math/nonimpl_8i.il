// Id := 100663538, Name := System.SByte Z0.math::nonimpl(System.SByte,System.SByte)
// sbyte nonimpl(sbyte a, sbyte b)
// AggressiveInlining
sbyte nonimpl(sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt32 System.Runtime.Intrinsics.X86.Bmi1::AndNot(System.UInt32,System.UInt32)
    IL_0007: conv.i1
    IL_0008: ret
}
