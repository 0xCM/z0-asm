// Id := 100663433, Name := System.Int32 Z0.math::modmul(System.Int32,System.Int32,System.Int32)
// int modmul(int a, int b, int m)
// AggressiveInlining
int modmul(int a, int b, int m)
{
    IL_0000: ldarg.0
    IL_0001: conv.i8
    IL_0002: ldarg.1
    IL_0003: conv.i8
    IL_0004: ldarg.2
    IL_0005: conv.i8
    IL_0006: call System.Int64 Z0.math::modmul(System.Int64,System.Int64,System.Int64)
    IL_000B: conv.i4
    IL_000C: ret
}
