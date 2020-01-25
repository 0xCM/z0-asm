// Id := 100663862, Name := Z0.Sign Z0.fmath::signum(System.Single)
// Sign:int signum(float src)
// AggressiveInlining
Sign:int signum(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.MathF::Sign(System.Single)
    IL_0006: ret
}
