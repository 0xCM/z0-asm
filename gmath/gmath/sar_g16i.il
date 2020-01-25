// Id := 100664070, Name := T Z0.gmath::sar<T>(T,System.Byte)
// Int16 sar<Int16>(Int16 src, byte offset)
// AggressiveInlining
Int16 sar<Int16>(Int16 src, byte offset)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::sar_u<T>(T,System.Byte)
    IL_0007: ret
}
