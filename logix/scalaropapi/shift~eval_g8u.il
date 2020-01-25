// Id := 100664046, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ShiftOpKind,T,System.Byte)
// ulong eval<ulong>(ShiftOpKind:byte kind, ulong a, byte count)
// IL
ulong eval<ulong>(ShiftOpKind:byte kind, ulong a, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_0026,IL_003E,IL_002E)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0036
    IL_001C: br.s IL_003E
    IL_001E: ldarg.1
    IL_001F: ldarg.2
    IL_0020: call T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: ret
    IL_0026: ldarg.1
    IL_0027: ldarg.2
    IL_0028: call T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_002D: ret
    IL_002E: ldarg.1
    IL_002F: ldarg.2
    IL_0030: call T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_0035: ret
    IL_0036: ldarg.1
    IL_0037: ldarg.2
    IL_0038: call T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_003D: ret
    IL_003E: ldarg.0
    IL_003F: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0044: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0049: throw
}
