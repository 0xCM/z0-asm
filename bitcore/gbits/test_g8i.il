// Id := 100663678, Name := Z0.bit Z0.gbits::test<T>(T,System.Byte)
// bit test<sbyte>(sbyte src, byte pos)
// AggressiveInlining
bit test<sbyte>(sbyte src, byte pos)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.bit Z0.gbits::testbit<T>(T,System.Byte)
    IL_0007: ret
}
