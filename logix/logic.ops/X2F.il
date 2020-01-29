// Id := 100664376, Name := Z0.bit Z0.Logix.LogicOps::f2f(Z0.bit,Z0.bit,Z0.bit)
// bit f2f(bit a, bit b, bit c)
// AggressiveInlining
bit f2f(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0006: ldarg.1
    IL_0007: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_000C: ldarg.2
    IL_000D: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0012: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
