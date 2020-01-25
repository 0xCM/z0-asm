// Id := 100663835, Name := System.Single Z0.fmath::ceil(System.Single)
// float ceil(float src)
// AggressiveInlining
float ceil(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Ceiling(System.Single)
    IL_0006: ret
}
