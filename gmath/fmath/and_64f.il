// Id := 100663871, Name := System.Double Z0.fmath::and(System.Double,System.Double)
// double and(double a, double b)
// AggressiveInlining
double and(double a, double b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int64 Z0.fpx::ToBits(System.Double)
    IL_0006: ldarg.1
    IL_0007: call System.Int64 Z0.fpx::ToBits(System.Double)
    IL_000C: and
    IL_000D: call System.Double Z0.BitConvert::ToDouble(System.Int64)
    IL_0012: ret
}
