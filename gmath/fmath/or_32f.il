// Id := 100663872, Name := System.Single Z0.fmath::or(System.Single,System.Single)
// float or(float a, float b)
// AggressiveInlining
float or(float a, float b)
{
    IL_0000: ldarg.0
    IL_0001: call System.Int32 Z0.fpx::ToBits(System.Single)
    IL_0006: ldarg.1
    IL_0007: call System.Int32 Z0.fpx::ToBits(System.Single)
    IL_000C: or
    IL_000D: call System.Single Z0.BitConvert::ToSingle(System.Int32)
    IL_0012: ret
}
