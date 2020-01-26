// Id := 100664398, Name := Z0.bit Z0.Logix.LogicOps::f40(Z0.bit,Z0.bit,Z0.bit)
// bit f40(bit a, bit b, bit c)
// AggressiveInlining
bit f40(bit a, bit b, bit c)
{
    IL_0000: ldarg.2
    IL_0001: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0006: ldarg.0
    IL_0007: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_000C: ldarg.1
    IL_000D: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
