// Z0.Sign Z0.fmath::signum(System.Single)
// Sign:int signum(float src)
// AggressiveInlining
Sign:int signum(float src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.MathF::Sign(System.Single)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Sign Z0.fmath::signum(System.Double)
// Sign:int signum(double src)
// AggressiveInlining
Sign:int signum(double src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 System.Math::Sign(System.Double)
    IL_0006: ret
}
------------------------------------------------------------------------------------------------------------------------
