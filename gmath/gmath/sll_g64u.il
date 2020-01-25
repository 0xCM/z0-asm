// Id := 100664073, Name := T Z0.gmath::sll<T>(T,System.Byte)
// ulong sll<ulong>(ulong a, byte count)
// AggressiveInlining
ulong sll<ulong>(ulong a, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::sll_u<T>(T,System.Byte)
    IL_0007: ret
}
