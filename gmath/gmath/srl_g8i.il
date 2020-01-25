// Id := 100664076, Name := T Z0.gmath::srl<T>(T,System.Byte)
// sbyte srl<sbyte>(sbyte a, byte count)
// AggressiveInlining
sbyte srl<sbyte>(sbyte a, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::srl_u<T>(T,System.Byte)
    IL_0007: ret
}
