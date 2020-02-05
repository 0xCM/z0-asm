// System.String Z0.Numeric::format(Z0.NumericIndicator)
// string format(NumericIndicator:ushort src)
// AggressiveInlining
string format(NumericIndicator:ushort src)
{
    IL_0000: ldstr "{0}"
    IL_0005: ldarg.0
    IL_0006: call System.Char Z0.Numeric::char(Z0.NumericIndicator)
    IL_000B: box System.Char
    IL_0010: call System.String System.String::Format(System.String,System.Object)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
// System.String Z0.Numeric::format(Z0.FixedWidth)
// string format(FixedWidth:uint src)
// AggressiveInlining
string format(FixedWidth:uint src)
{
    IL_0000: ldstr "{0}"
    IL_0005: ldarg.0
    IL_0006: call System.Int32 Z0.Numeric::int(Z0.FixedWidth)
    IL_000B: box System.Int32
    IL_0010: call System.String System.String::Format(System.String,System.Object)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
