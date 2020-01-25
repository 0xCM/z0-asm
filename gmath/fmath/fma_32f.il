// Id := 100663848, Name := System.Single Z0.fmath::fma(System.Single,System.Single,System.Single)
// float fma(float x, float y, float z)
// AggressiveInlining
float fma(float x, float y, float z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Single System.MathF::FusedMultiplyAdd(System.Single,System.Single,System.Single)
    IL_0008: ret
}
