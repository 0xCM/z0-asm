// Id := 100664570, Name := T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
// sbyte rotr<sbyte>(sbyte a, byte count)
// AggressiveInlining
sbyte rotr<sbyte>(sbyte a, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gbits::rotr<T>(T,System.Int32)
    IL_0007: ret
}
