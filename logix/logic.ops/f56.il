// Id := 100664415, Name := Z0.bit Z0.Logix.LogicOps::f56(Z0.bit,Z0.bit,Z0.bit)
// bit f56(bit a, bit b, bit c)
// AggressiveInlining
bit f56(bit a, bit b, bit c)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_0008: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_000D: ret
}
------------------------------------------------------------------------------------------------------------------------
