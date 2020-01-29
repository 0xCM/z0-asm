// Id := 100664342, Name := Z0.bit Z0.Logix.LogicOps::f0d(Z0.bit,Z0.bit,Z0.bit)
// bit f0d(bit a, bit b, bit c)
// AggressiveInlining
bit f0d(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_000D: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0012: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0017: ret
}
------------------------------------------------------------------------------------------------------------------------
