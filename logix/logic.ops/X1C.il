// Id := 100664357, Name := Z0.bit Z0.Logix.LogicOps::f1c(Z0.bit,Z0.bit,Z0.bit)
// bit f1c(bit a, bit b, bit c)
// AggressiveInlining
bit f1c(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0007: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_000C: ldarg.0
    IL_000D: ldarg.1
    IL_000E: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0013: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
