// Id := 100663580, Name := System.Int16 Z0.math::select(System.Int16,System.Int16,System.Int16)
// Int16 select(Int16 a, Int16 b, Int16 c)
// AggressiveInlining
Int16 select(Int16 a, Int16 b, Int16 c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Int32 Z0.math::select(System.Int32,System.Int32,System.Int32)
    IL_0008: conv.i2
    IL_0009: ret
}
