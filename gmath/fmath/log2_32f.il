// Id := 100663909, Name := System.Single Z0.fmath::log2(System.Single)
// float log2(float src)
// AggressiveInlining
float log2(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Log2(System.Single)
    IL_0006: ret
}
