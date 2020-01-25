// Id := 100664569, Name := T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
// int rotl<int>(int a, byte count)
// AggressiveInlining
int rotl<int>(int a, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gbits::rotl<T>(T,System.Int32)
    IL_0007: ret
}
