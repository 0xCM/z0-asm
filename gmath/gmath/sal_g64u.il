// Id := 100664067, Name := T Z0.gmath::sal<T>(T,System.Byte)
// ulong sal<ulong>(ulong src, byte offset)
// AggressiveInlining
ulong sal<ulong>(ulong src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::sal_u<T>(T,System.Byte)
    IL_0007: ret
}
