// Id := 100663437, Name := System.Single Z0.math::modmul(System.Single,System.Single,System.Single)
// float modmul(float a, float b, float m)
// AggressiveInlining
float modmul(float a, float b, float m)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: mul
    IL_0003: ldarg.2
    IL_0004: rem
    IL_0005: ret
}
