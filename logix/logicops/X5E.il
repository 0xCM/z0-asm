// Id := 100664428, Name := Z0.bit Z0.Logix.LogicOps::f5e(Z0.bit,Z0.bit,Z0.bit)
// bit f5e(bit a, bit b, bit c)
// AggressiveInlining
bit f5e(bit a, bit b, bit c)
{
    IL_0000: ldarg.2
    IL_0001: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0006: ldarg.1
    IL_0007: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_000C: ldarg.0
    IL_000D: ldarg.2
    IL_000E: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0013: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
