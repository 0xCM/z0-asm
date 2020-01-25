// Id := 100663582, Name := System.Int32 Z0.math::select(System.Int32,System.Int32,System.Int32)
// int select(int a, int b, int c)
// AggressiveInlining
int select(int a, int b, int c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Int32 Z0.math::and(System.Int32,System.Int32)
    IL_0007: ldarg.0
    IL_0008: ldarg.2
    IL_0009: call System.Int32 Z0.math::nonimpl(System.Int32,System.Int32)
    IL_000E: call System.Int32 Z0.math::or(System.Int32,System.Int32)
    IL_0013: ret
}
