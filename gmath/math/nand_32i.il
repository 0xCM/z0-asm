// Id := 100663534, Name := System.Int32 Z0.math::nand(System.Int32,System.Int32)
// int nand(int a, int b)
// AggressiveInlining
int nand(int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: and
    IL_0003: not
    IL_0004: ret
}
