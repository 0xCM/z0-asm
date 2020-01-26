// Id := 100664029, Name := Z0.UnaryOp`1<Z0.bit> Z0.Logix.LogicOpApi::lookup(Z0.UnaryBitLogicKind)
// UnaryOp<bit> lookup(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<bit> lookup(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0018,IL_0025,IL_0032,IL_003F)
    IL_0016: br.s IL_004C
    IL_0018: ldnull
    IL_0019: ldftn Z0.bit Z0.Logix.LogicOps::false(Z0.bit)
    IL_001F: newobj System.Void Z0.UnaryOp`1<Z0.bit>::.ctor(System.Object,System.IntPtr)
    IL_0024: ret
    IL_0025: ldnull
    IL_0026: ldftn Z0.bit Z0.Logix.LogicOps::not(Z0.bit)
    IL_002C: newobj System.Void Z0.UnaryOp`1<Z0.bit>::.ctor(System.Object,System.IntPtr)
    IL_0031: ret
    IL_0032: ldnull
    IL_0033: ldftn Z0.bit Z0.Logix.LogicOps::identity(Z0.bit)
    IL_0039: newobj System.Void Z0.UnaryOp`1<Z0.bit>::.ctor(System.Object,System.IntPtr)
    IL_003E: ret
    IL_003F: ldnull
    IL_0040: ldftn Z0.bit Z0.Logix.LogicOps::true(Z0.bit)
    IL_0046: newobj System.Void Z0.UnaryOp`1<Z0.bit>::.ctor(System.Object,System.IntPtr)
    IL_004B: ret
    IL_004C: ldarg.0
    IL_004D: call System.String Z0.Logix.OpHelpers::sig(Z0.UnaryBitLogicKind)
    IL_0052: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0057: throw
}
------------------------------------------------------------------------------------------------------------------------
