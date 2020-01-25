// Id := 100664043, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// long eval<long>(UnaryBitLogicKind:byte kind, long a)
// IL
long eval<long>(UnaryBitLogicKind:byte kind, long a)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0011
    IL_0008: br.s IL_0018
    IL_000A: ldarg.1
    IL_000B: call T Z0.Logix.ScalarOps::not<T>(T)
    IL_0010: ret
    IL_0011: ldarg.1
    IL_0012: call T Z0.Logix.ScalarOps::identity<T>(T)
    IL_0017: ret
    IL_0018: ldarg.0
    IL_0019: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_001E: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0023: throw
}
