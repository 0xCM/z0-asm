// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A, ref BitMatrix<byte> Z)
// IL
BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A, ref BitMatrix<byte> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, BitMatrix<sbyte> A, ref BitMatrix<sbyte> Z)
// IL
BitMatrix<sbyte> eval<sbyte>(UnaryBitLogicKind:byte kind, BitMatrix<sbyte> A, ref BitMatrix<sbyte> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A, ref BitMatrix<ushort> Z)
// IL
BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A, ref BitMatrix<ushort> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<Int16> eval<Int16>(UnaryBitLogicKind:byte kind, BitMatrix<Int16> A, ref BitMatrix<Int16> Z)
// IL
BitMatrix<Int16> eval<Int16>(UnaryBitLogicKind:byte kind, BitMatrix<Int16> A, ref BitMatrix<Int16> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A, ref BitMatrix<uint> Z)
// IL
BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A, ref BitMatrix<uint> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<int> eval<int>(UnaryBitLogicKind:byte kind, BitMatrix<int> A, ref BitMatrix<int> Z)
// IL
BitMatrix<int> eval<int>(UnaryBitLogicKind:byte kind, BitMatrix<int> A, ref BitMatrix<int> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A, ref BitMatrix<ulong> Z)
// IL
BitMatrix<ulong> eval<ulong>(UnaryBitLogicKind:byte kind, BitMatrix<ulong> A, ref BitMatrix<ulong> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664016, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<long> eval<long>(UnaryBitLogicKind:byte kind, BitMatrix<long> A, ref BitMatrix<long> Z)
// IL
BitMatrix<long> eval<long>(UnaryBitLogicKind:byte kind, BitMatrix<long> A, ref BitMatrix<long> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0018
    IL_0008: br.s IL_0026
    IL_000A: ldarga.s A
    IL_000C: ldarg.2
    IL_000D: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::not<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0012: ldobj Z0.BitMatrix`1<T>
    IL_0017: ret
    IL_0018: ldarga.s A
    IL_001A: ldarg.2
    IL_001B: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0020: ldobj Z0.BitMatrix`1<T>
    IL_0025: ret
    IL_0026: ldarg.0
    IL_0027: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002C: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0031: throw
}
------------------------------------------------------------------------------------------------------------------------
