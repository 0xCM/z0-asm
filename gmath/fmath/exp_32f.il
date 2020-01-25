// Id := 100663904, Name := System.Single Z0.fmath::exp(System.Single)
// float exp(float pow)
// AggressiveInlining
float exp(float pow)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Exp(System.Single)
    IL_0006: ret
}
