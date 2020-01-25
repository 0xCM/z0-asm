// Id := 100663913, Name := System.Single Z0.fmath::log(System.Single,System.Nullable`1<System.Single>)
// float log(float src, float b)
// AggressiveInlining
float log(float src, float b)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: stloc.0
    IL_0003: ldloca.s V_0
    IL_0005: call System.Boolean System.Nullable`1<System.Single>::get_HasValue()
    IL_000A: brtrue.s IL_0013
    IL_000C: ldc.r4 10
    IL_0011: br.s IL_001A
    IL_0013: ldloca.s V_0
    IL_0015: call System.Single System.Nullable`1<System.Single>::GetValueOrDefault()
    IL_001A: call System.Single System.MathF::Log(System.Single,System.Single)
    IL_001F: ret
}
