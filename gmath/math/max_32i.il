// Id := 100663730, Name := System.Int32 Z0.math::max(System.Int32,System.Int32)
// int max(int a, int b)
// AggressiveInlining
int max(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: bgt.s IL_0006
    IL_0004: ldarg.1
    IL_0005: ret
    IL_0006: ldarg.0
    IL_0007: ret
}
