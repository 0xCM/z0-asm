// Id := 100664015, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>)
// BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A)
// IL
BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarga.s A
    IL_000C: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&)
    IL_0011: ret
    IL_0012: ldarga.s A
    IL_0014: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
