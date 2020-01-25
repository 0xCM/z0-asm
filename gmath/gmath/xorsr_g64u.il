// Id := 100664085, Name := T Z0.gmath::xorsr<T>(T,System.Byte)
// ulong xorsr<ulong>(ulong a, byte offset)
// AggressiveInlining
ulong xorsr<ulong>(ulong a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xorsr_u<T>(T,System.Byte)
    IL_0007: ret
}
