// Z0.bit Z0.Logix.LogicOps::f1d(Z0.bit,Z0.bit,Z0.bit)
// bit f1d(bit a, bit b, bit c)
// AggressiveInlining
bit f1d(bit a, bit b, bit c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0007: ldarg.2
    IL_0008: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_000D: call Z0.bit Z0.Logix.LogicOps::select(Z0.bit,Z0.bit,Z0.bit)
    IL_0012: ret
}
------------------------------------------------------------------------------------------------------------------------
