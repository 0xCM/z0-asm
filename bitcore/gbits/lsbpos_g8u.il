// Id := 100663645, Name := System.Int32 Z0.gbits::lsbpos<T>(T)
// int lsbpos<byte>(byte src)
// AggressiveInlining
int lsbpos<byte>(byte src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 Z0.gbits::ntz<T>(T)
    IL_0006: ret
}
