// Id := 100664027, Name := Z0.bit Z0.Logix.LogicOpApi::eval(Z0.UnaryBitLogicKind,Z0.bit)
// bit eval(UnaryBitLogicKind:byte kind, bit a)
// IL
bit eval(UnaryBitLogicKind:byte kind, bit a)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0018,IL_001E,IL_0025,IL_0027)
    IL_0016: br.s IL_002D
    IL_0018: call Z0.bit zfunc::get_off()
    IL_001D: ret
    IL_001E: ldarg.1
    IL_001F: call Z0.bit Z0.bit::not(Z0.bit)
    IL_0024: ret
    IL_0025: ldarg.1
    IL_0026: ret
    IL_0027: call Z0.bit zfunc::get_on()
    IL_002C: ret
    IL_002D: ldarg.0
    IL_002E: call System.String Z0.Logix.OpHelpers::sig(Z0.UnaryBitLogicKind)
    IL_0033: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0038: throw
}
------------------------------------------------------------------------------------------------------------------------
