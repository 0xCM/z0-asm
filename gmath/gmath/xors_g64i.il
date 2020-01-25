// Id := 100664079, Name := T Z0.gmath::xors<T>(T,System.Byte)
// long xors<long>(long a, byte offset)
// AggressiveInlining
long xors<long>(long a, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::xors_u<T>(T,System.Byte)
    IL_0007: ret
}
