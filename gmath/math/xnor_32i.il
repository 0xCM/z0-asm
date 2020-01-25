// Id := 100663598, Name := System.Int32 Z0.math::xnor(System.Int32,System.Int32)
// int xnor(int a, int b)
// AggressiveInlining
int xnor(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: xor
    IL_0003: not
    IL_0004: ret
}
