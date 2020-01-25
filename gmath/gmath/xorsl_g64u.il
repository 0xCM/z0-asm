// Id := 100664082, Name := T Z0.gmath::xorsl<T>(T,System.Byte)
// ulong xorsl<ulong>(ulong a, byte offset)
// AggressiveInlining
ulong xorsl<ulong>(ulong a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xorsl_u<T>(T,System.Byte)
    IL_0007: ret
}
