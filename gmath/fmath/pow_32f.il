// Id := 100663915, Name := System.Single Z0.fmath::pow(System.Single,System.Single)
// float pow(float src, float exp)
// AggressiveInlining
float pow(float src, float exp)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Single System.MathF::Pow(System.Single,System.Single)
    IL_0007: ret
}
