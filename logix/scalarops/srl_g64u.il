// Id := 100664568, Name := T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
// ulong srl<ulong>(ulong a, byte count)
// AggressiveInlining
ulong srl<ulong>(ulong a, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::srl<T>(T,System.Byte)
    IL_0007: ret
}
