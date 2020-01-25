// Id := 100663635, Name := Z0.bit Z0.gbits::dot<T>(T,T)
// bit dot<Int16>(Int16 x, Int16 y)
// AggressiveInlining
bit dot<Int16>(Int16 x, Int16 y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call T Z0.gmath::and<T>(T,T)
    IL_0007: call System.UInt32 Z0.gbits::pop<T>(T)
    IL_000C: call Z0.bit zfunc::odd(System.UInt32)
    IL_0011: ret
}
