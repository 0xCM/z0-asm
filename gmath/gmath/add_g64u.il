// Id := 100663946, Name := T Z0.gmath::add<T>(T,T)
// ulong add<ulong>(ulong a, ulong b)
// AggressiveInlining
ulong add<ulong>(ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::add_u<T>(T,T)
    IL_0007: ret
}
