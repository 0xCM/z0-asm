// Z0.bit Z0.Logix.LogicOps::f5c(Z0.bit,Z0.bit,Z0.bit)
// bit f5c(bit a, bit b, bit c)
// AggressiveInlining
bit f5c(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0007: ldarg.1
    IL_0008: call Z0.bit Z0.Logix.LogicOps::select(Z0.bit,Z0.bit,Z0.bit)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
