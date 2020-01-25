// Id := 100663964, Name := System.UInt64 Z0.gmath::dist<T>(T,T)
// ulong dist<int>(int a, int b)
// AggressiveInlining
ulong dist<int>(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.UInt64 Z0.gmath::dist_u<T>(T,T)
    IL_0007: ret
}
