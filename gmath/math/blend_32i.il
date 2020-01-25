// Id := 100663590, Name := System.Int32 Z0.math::blend(System.Int32,System.Int32,System.Int32)
// int blend(int a, int b, int mask)
// AggressiveInlining
int blend(int a, int b, int mask)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: call System.Int32 Z0.math::xor(System.Int32,System.Int32)
    IL_0008: ldarg.2
    IL_0009: call System.Int32 Z0.math::and(System.Int32,System.Int32)
    IL_000E: call System.Int32 Z0.math::xor(System.Int32,System.Int32)
    IL_0013: ret
}
