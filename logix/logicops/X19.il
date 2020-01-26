// Id := 100664359, Name := Z0.bit Z0.Logix.LogicOps::f19(Z0.bit,Z0.bit,Z0.bit)
// bit f19(bit a, bit b, bit c)
// AggressiveInlining
bit f19(bit a, bit b, bit c)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.2
    IL_0002: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_000F: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_0014: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0019: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_001E: ret
}
------------------------------------------------------------------------------------------------------------------------
