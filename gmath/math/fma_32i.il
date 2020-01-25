// Id := 100663383, Name := System.Int32 Z0.math::fma(System.Int32,System.Int32,System.Int32)
// int fma(int x, int y, int z)
// AggressiveInlining
int fma(int x, int y, int z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: add
    IL_0005: ret
}
