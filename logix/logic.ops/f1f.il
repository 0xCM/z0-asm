// Z0.bit Z0.Logix.LogicOps::f1f(Z0.bit,Z0.bit,Z0.bit)
// bit f1f(bit a, bit b, bit c)
// AggressiveInlining
bit f1f(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0008: call Z0.bit Z0.Logix.LogicOps::nand(Z0.bit,Z0.bit)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
