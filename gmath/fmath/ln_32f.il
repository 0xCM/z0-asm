// Id := 100663911, Name := System.Single Z0.fmath::ln(System.Single)
// float ln(float src)
// AggressiveInlining
float ln(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Single System.MathF::Log(System.Single)
    IL_0006: ret
}
