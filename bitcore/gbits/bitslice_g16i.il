// Id := 100663624, Name := T Z0.gbits::bitslice<T>(T,System.Byte,System.Byte)
// Int16 bitslice<Int16>(Int16 a, byte start, byte length)
// AggressiveInlining
Int16 bitslice<Int16>(Int16 a, byte start, byte length)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call T Z0.gbits::bitslice_u<T>(T,System.Byte,System.Byte)
    IL_0008: ret
}
