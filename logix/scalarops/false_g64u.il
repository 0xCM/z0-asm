// Id := 100664536, Name := T Z0.Logix.ScalarOps::false<T>(T,T,T)
// ulong false<ulong>(ulong a, ulong b, ulong c)
// AggressiveInlining
ulong false<ulong>(ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.gmath::false<T>(T,T,T)
    IL_0008: ret
}
