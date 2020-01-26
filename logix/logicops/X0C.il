// Id := 100664346, Name := Z0.bit Z0.Logix.LogicOps::f0c(Z0.bit,Z0.bit,Z0.bit)
// bit f0c(bit a, bit b, bit c)
// AggressiveInlining
bit f0c(bit a, bit b, bit c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0007: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_000C: ret
}
------------------------------------------------------------------------------------------------------------------------
