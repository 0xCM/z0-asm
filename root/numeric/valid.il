// System.Boolean Z0.Numeric::valid(Z0.NumericIndicator)
// bool valid(NumericIndicator:ushort src)
// AggressiveInlining
bool valid(NumericIndicator:ushort src)
{
    IL_0000: ldtoken Z0.NumericIndicator
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldarg.0
    IL_000B: box Z0.NumericIndicator
    IL_0010: call System.Boolean System.Enum::IsDefined(System.Type,System.Object)
    IL_0015: ret
}
------------------------------------------------------------------------------------------------------------------------
