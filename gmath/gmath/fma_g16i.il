// Id := 100663978, Name := T Z0.gmath::fma<T>(T,T,T)
// Int16 fma<Int16>(Int16 x, Int16 y, Int16 z)
// AggressiveInlining
Int16 fma<Int16>(Int16 x, Int16 y, Int16 z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.gmath::fma_u<T>(T,T,T)
    IL_0008: ret
}
