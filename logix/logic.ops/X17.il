// Id := 100664352, Name := Z0.bit Z0.Logix.LogicOps::f17(Z0.bit,Z0.bit,Z0.bit)
// bit f17(bit a, bit b, bit c)
// AggressiveInlining
bit f17(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0008: ldarg.1
    IL_0009: ldarg.2
    IL_000A: call Z0.bit Z0.Logix.LogicOps::and(Z0.bit,Z0.bit)
    IL_000F: call Z0.bit Z0.Logix.LogicOps::select(Z0.bit,Z0.bit,Z0.bit)
    IL_0014: call Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_0019: ret
}
------------------------------------------------------------------------------------------------------------------------
