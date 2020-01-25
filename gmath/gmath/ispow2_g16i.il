// Id := 100663989, Name := Z0.bit Z0.gmath::ispow2<T>(T)
// bit ispow2<Int16>(Int16 src)
// AggressiveInlining
bit ispow2<Int16>(Int16 src)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0006: call Z0.bit Z0.math::ispow2(System.UInt64)
    IL_000B: ret
}
