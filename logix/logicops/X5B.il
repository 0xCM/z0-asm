// Id := 100664425, Name := Z0.bit Z0.Logix.LogicOps::f5b(Z0.bit,Z0.bit,Z0.bit)
// bit f5b(bit a, bit b, bit c)
// AggressiveInlining
bit f5b(bit a, bit b, bit c)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.2
    IL_0002: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_000E: call Z0.bit zfunc::get_on()
    IL_0013: call Z0.bit Z0.Logix.LogicOps::xor(Z0.bit,Z0.bit)
    IL_0018: call Z0.bit Z0.Logix.LogicOps::or(Z0.bit,Z0.bit)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
