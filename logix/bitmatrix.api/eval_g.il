// Id := 100664010, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>)
// BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A)
// IL
BitMatrix<byte> eval<byte>(UnaryBitLogicKind:byte kind, BitMatrix<byte> A)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100664010, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>)
// BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A)
// IL
BitMatrix<ushort> eval<ushort>(UnaryBitLogicKind:byte kind, BitMatrix<ushort> A)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100664010, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>)
// BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A)
// IL
BitMatrix<uint> eval<uint>(UnaryBitLogicKind:byte kind, BitMatrix<uint> A)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100664010, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>)
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
------------------------------------------------------------------------------------------------------------------------
// Id := 100664011, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
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
// Id := 100664011, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
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
// Id := 100664011, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
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
// Id := 100664011, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.UnaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
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
// Id := 100664012, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>)
// BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B)
// IL
BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_00D9,IL_0093,IL_00C5,IL_009D,IL_007F,IL_006B,IL_0075,IL_0089,IL_00B1,IL_00BB,IL_00A7,IL_00CF,IL_0061,IL_004B)
    IL_0046: br IL_00E3
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0060: ret
    IL_0061: ldarga.s A
    IL_0063: ldarga.s B
    IL_0065: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_006A: ret
    IL_006B: ldarga.s A
    IL_006D: ldarga.s B
    IL_006F: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0074: ret
    IL_0075: ldarga.s A
    IL_0077: ldarga.s B
    IL_0079: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_007E: ret
    IL_007F: ldarga.s A
    IL_0081: ldarga.s B
    IL_0083: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0088: ret
    IL_0089: ldarga.s A
    IL_008B: ldarga.s B
    IL_008D: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0092: ret
    IL_0093: ldarga.s A
    IL_0095: ldarga.s B
    IL_0097: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_009C: ret
    IL_009D: ldarga.s A
    IL_009F: ldarga.s B
    IL_00A1: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B0: ret
    IL_00B1: ldarga.s A
    IL_00B3: ldarga.s B
    IL_00B5: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00BA: ret
    IL_00BB: ldarga.s A
    IL_00BD: ldarga.s B
    IL_00BF: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C4: ret
    IL_00C5: ldarga.s A
    IL_00C7: ldarga.s B
    IL_00C9: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00CE: ret
    IL_00CF: ldarga.s A
    IL_00D1: ldarga.s B
    IL_00D3: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D8: ret
    IL_00D9: ldarga.s A
    IL_00DB: ldarga.s B
    IL_00DD: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E2: ret
    IL_00E3: ldarg.0
    IL_00E4: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00E9: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00EE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664012, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>)
// BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B)
// IL
BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_00D9,IL_0093,IL_00C5,IL_009D,IL_007F,IL_006B,IL_0075,IL_0089,IL_00B1,IL_00BB,IL_00A7,IL_00CF,IL_0061,IL_004B)
    IL_0046: br IL_00E3
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0060: ret
    IL_0061: ldarga.s A
    IL_0063: ldarga.s B
    IL_0065: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_006A: ret
    IL_006B: ldarga.s A
    IL_006D: ldarga.s B
    IL_006F: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0074: ret
    IL_0075: ldarga.s A
    IL_0077: ldarga.s B
    IL_0079: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_007E: ret
    IL_007F: ldarga.s A
    IL_0081: ldarga.s B
    IL_0083: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0088: ret
    IL_0089: ldarga.s A
    IL_008B: ldarga.s B
    IL_008D: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0092: ret
    IL_0093: ldarga.s A
    IL_0095: ldarga.s B
    IL_0097: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_009C: ret
    IL_009D: ldarga.s A
    IL_009F: ldarga.s B
    IL_00A1: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B0: ret
    IL_00B1: ldarga.s A
    IL_00B3: ldarga.s B
    IL_00B5: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00BA: ret
    IL_00BB: ldarga.s A
    IL_00BD: ldarga.s B
    IL_00BF: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C4: ret
    IL_00C5: ldarga.s A
    IL_00C7: ldarga.s B
    IL_00C9: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00CE: ret
    IL_00CF: ldarga.s A
    IL_00D1: ldarga.s B
    IL_00D3: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D8: ret
    IL_00D9: ldarga.s A
    IL_00DB: ldarga.s B
    IL_00DD: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E2: ret
    IL_00E3: ldarg.0
    IL_00E4: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00E9: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00EE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664012, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>)
// BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B)
// IL
BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_00D9,IL_0093,IL_00C5,IL_009D,IL_007F,IL_006B,IL_0075,IL_0089,IL_00B1,IL_00BB,IL_00A7,IL_00CF,IL_0061,IL_004B)
    IL_0046: br IL_00E3
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0060: ret
    IL_0061: ldarga.s A
    IL_0063: ldarga.s B
    IL_0065: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_006A: ret
    IL_006B: ldarga.s A
    IL_006D: ldarga.s B
    IL_006F: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0074: ret
    IL_0075: ldarga.s A
    IL_0077: ldarga.s B
    IL_0079: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_007E: ret
    IL_007F: ldarga.s A
    IL_0081: ldarga.s B
    IL_0083: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0088: ret
    IL_0089: ldarga.s A
    IL_008B: ldarga.s B
    IL_008D: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0092: ret
    IL_0093: ldarga.s A
    IL_0095: ldarga.s B
    IL_0097: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_009C: ret
    IL_009D: ldarga.s A
    IL_009F: ldarga.s B
    IL_00A1: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B0: ret
    IL_00B1: ldarga.s A
    IL_00B3: ldarga.s B
    IL_00B5: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00BA: ret
    IL_00BB: ldarga.s A
    IL_00BD: ldarga.s B
    IL_00BF: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C4: ret
    IL_00C5: ldarga.s A
    IL_00C7: ldarga.s B
    IL_00C9: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00CE: ret
    IL_00CF: ldarga.s A
    IL_00D1: ldarga.s B
    IL_00D3: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D8: ret
    IL_00D9: ldarga.s A
    IL_00DB: ldarga.s B
    IL_00DD: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E2: ret
    IL_00E3: ldarg.0
    IL_00E4: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00E9: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00EE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664012, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>)
// BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B)
// IL
BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_00D9,IL_0093,IL_00C5,IL_009D,IL_007F,IL_006B,IL_0075,IL_0089,IL_00B1,IL_00BB,IL_00A7,IL_00CF,IL_0061,IL_004B)
    IL_0046: br IL_00E3
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0060: ret
    IL_0061: ldarga.s A
    IL_0063: ldarga.s B
    IL_0065: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_006A: ret
    IL_006B: ldarga.s A
    IL_006D: ldarga.s B
    IL_006F: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0074: ret
    IL_0075: ldarga.s A
    IL_0077: ldarga.s B
    IL_0079: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_007E: ret
    IL_007F: ldarga.s A
    IL_0081: ldarga.s B
    IL_0083: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0088: ret
    IL_0089: ldarga.s A
    IL_008B: ldarga.s B
    IL_008D: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0092: ret
    IL_0093: ldarga.s A
    IL_0095: ldarga.s B
    IL_0097: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_009C: ret
    IL_009D: ldarga.s A
    IL_009F: ldarga.s B
    IL_00A1: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B0: ret
    IL_00B1: ldarga.s A
    IL_00B3: ldarga.s B
    IL_00B5: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00BA: ret
    IL_00BB: ldarga.s A
    IL_00BD: ldarga.s B
    IL_00BF: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C4: ret
    IL_00C5: ldarga.s A
    IL_00C7: ldarga.s B
    IL_00C9: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00CE: ret
    IL_00CF: ldarga.s A
    IL_00D1: ldarga.s B
    IL_00D3: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D8: ret
    IL_00D9: ldarga.s A
    IL_00DB: ldarga.s B
    IL_00DD: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E2: ret
    IL_00E3: ldarg.0
    IL_00E4: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00E9: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00EE: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664013, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B, ref BitMatrix<byte> Z)
// IL
BitMatrix<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitMatrix<byte> A, BitMatrix<byte> B, ref BitMatrix<byte> Z)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_0127,IL_00B7,IL_0107,IL_00D7,IL_0097,IL_0077,IL_0087,IL_00A7,IL_00E7,IL_00F7,IL_00C7,IL_0117,IL_0067,IL_004B)
    IL_0046: br IL_0137
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: ldarg.3
    IL_005C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0061: ldobj Z0.BitMatrix`1<T>
    IL_0066: ret
    IL_0067: ldarga.s A
    IL_0069: ldarga.s B
    IL_006B: ldarg.3
    IL_006C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0071: ldobj Z0.BitMatrix`1<T>
    IL_0076: ret
    IL_0077: ldarga.s A
    IL_0079: ldarga.s B
    IL_007B: ldarg.3
    IL_007C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0081: ldobj Z0.BitMatrix`1<T>
    IL_0086: ret
    IL_0087: ldarga.s A
    IL_0089: ldarga.s B
    IL_008B: ldarg.3
    IL_008C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0091: ldobj Z0.BitMatrix`1<T>
    IL_0096: ret
    IL_0097: ldarga.s A
    IL_0099: ldarga.s B
    IL_009B: ldarg.3
    IL_009C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A1: ldobj Z0.BitMatrix`1<T>
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: ldarg.3
    IL_00AC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B1: ldobj Z0.BitMatrix`1<T>
    IL_00B6: ret
    IL_00B7: ldarga.s A
    IL_00B9: ldarga.s B
    IL_00BB: ldarg.3
    IL_00BC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C1: ldobj Z0.BitMatrix`1<T>
    IL_00C6: ret
    IL_00C7: ldarga.s A
    IL_00C9: ldarga.s B
    IL_00CB: ldarg.3
    IL_00CC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D1: ldobj Z0.BitMatrix`1<T>
    IL_00D6: ret
    IL_00D7: ldarga.s A
    IL_00D9: ldarga.s B
    IL_00DB: ldarg.3
    IL_00DC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E1: ldobj Z0.BitMatrix`1<T>
    IL_00E6: ret
    IL_00E7: ldarga.s A
    IL_00E9: ldarga.s B
    IL_00EB: ldarg.3
    IL_00EC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00F1: ldobj Z0.BitMatrix`1<T>
    IL_00F6: ret
    IL_00F7: ldarga.s A
    IL_00F9: ldarga.s B
    IL_00FB: ldarg.3
    IL_00FC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0101: ldobj Z0.BitMatrix`1<T>
    IL_0106: ret
    IL_0107: ldarga.s A
    IL_0109: ldarga.s B
    IL_010B: ldarg.3
    IL_010C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0111: ldobj Z0.BitMatrix`1<T>
    IL_0116: ret
    IL_0117: ldarga.s A
    IL_0119: ldarga.s B
    IL_011B: ldarg.3
    IL_011C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0121: ldobj Z0.BitMatrix`1<T>
    IL_0126: ret
    IL_0127: ldarga.s A
    IL_0129: ldarga.s B
    IL_012B: ldarg.3
    IL_012C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0131: ldobj Z0.BitMatrix`1<T>
    IL_0136: ret
    IL_0137: ldarg.0
    IL_0138: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_013D: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0142: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664013, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
// IL
BitMatrix<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitMatrix<ushort> A, BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_0127,IL_00B7,IL_0107,IL_00D7,IL_0097,IL_0077,IL_0087,IL_00A7,IL_00E7,IL_00F7,IL_00C7,IL_0117,IL_0067,IL_004B)
    IL_0046: br IL_0137
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: ldarg.3
    IL_005C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0061: ldobj Z0.BitMatrix`1<T>
    IL_0066: ret
    IL_0067: ldarga.s A
    IL_0069: ldarga.s B
    IL_006B: ldarg.3
    IL_006C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0071: ldobj Z0.BitMatrix`1<T>
    IL_0076: ret
    IL_0077: ldarga.s A
    IL_0079: ldarga.s B
    IL_007B: ldarg.3
    IL_007C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0081: ldobj Z0.BitMatrix`1<T>
    IL_0086: ret
    IL_0087: ldarga.s A
    IL_0089: ldarga.s B
    IL_008B: ldarg.3
    IL_008C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0091: ldobj Z0.BitMatrix`1<T>
    IL_0096: ret
    IL_0097: ldarga.s A
    IL_0099: ldarga.s B
    IL_009B: ldarg.3
    IL_009C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A1: ldobj Z0.BitMatrix`1<T>
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: ldarg.3
    IL_00AC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B1: ldobj Z0.BitMatrix`1<T>
    IL_00B6: ret
    IL_00B7: ldarga.s A
    IL_00B9: ldarga.s B
    IL_00BB: ldarg.3
    IL_00BC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C1: ldobj Z0.BitMatrix`1<T>
    IL_00C6: ret
    IL_00C7: ldarga.s A
    IL_00C9: ldarga.s B
    IL_00CB: ldarg.3
    IL_00CC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D1: ldobj Z0.BitMatrix`1<T>
    IL_00D6: ret
    IL_00D7: ldarga.s A
    IL_00D9: ldarga.s B
    IL_00DB: ldarg.3
    IL_00DC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E1: ldobj Z0.BitMatrix`1<T>
    IL_00E6: ret
    IL_00E7: ldarga.s A
    IL_00E9: ldarga.s B
    IL_00EB: ldarg.3
    IL_00EC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00F1: ldobj Z0.BitMatrix`1<T>
    IL_00F6: ret
    IL_00F7: ldarga.s A
    IL_00F9: ldarga.s B
    IL_00FB: ldarg.3
    IL_00FC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0101: ldobj Z0.BitMatrix`1<T>
    IL_0106: ret
    IL_0107: ldarga.s A
    IL_0109: ldarga.s B
    IL_010B: ldarg.3
    IL_010C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0111: ldobj Z0.BitMatrix`1<T>
    IL_0116: ret
    IL_0117: ldarga.s A
    IL_0119: ldarga.s B
    IL_011B: ldarg.3
    IL_011C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0121: ldobj Z0.BitMatrix`1<T>
    IL_0126: ret
    IL_0127: ldarga.s A
    IL_0129: ldarga.s B
    IL_012B: ldarg.3
    IL_012C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0131: ldobj Z0.BitMatrix`1<T>
    IL_0136: ret
    IL_0137: ldarg.0
    IL_0138: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_013D: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0142: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664013, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B, ref BitMatrix<uint> Z)
// IL
BitMatrix<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitMatrix<uint> A, BitMatrix<uint> B, ref BitMatrix<uint> Z)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_0127,IL_00B7,IL_0107,IL_00D7,IL_0097,IL_0077,IL_0087,IL_00A7,IL_00E7,IL_00F7,IL_00C7,IL_0117,IL_0067,IL_004B)
    IL_0046: br IL_0137
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: ldarg.3
    IL_005C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0061: ldobj Z0.BitMatrix`1<T>
    IL_0066: ret
    IL_0067: ldarga.s A
    IL_0069: ldarga.s B
    IL_006B: ldarg.3
    IL_006C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0071: ldobj Z0.BitMatrix`1<T>
    IL_0076: ret
    IL_0077: ldarga.s A
    IL_0079: ldarga.s B
    IL_007B: ldarg.3
    IL_007C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0081: ldobj Z0.BitMatrix`1<T>
    IL_0086: ret
    IL_0087: ldarga.s A
    IL_0089: ldarga.s B
    IL_008B: ldarg.3
    IL_008C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0091: ldobj Z0.BitMatrix`1<T>
    IL_0096: ret
    IL_0097: ldarga.s A
    IL_0099: ldarga.s B
    IL_009B: ldarg.3
    IL_009C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A1: ldobj Z0.BitMatrix`1<T>
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: ldarg.3
    IL_00AC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B1: ldobj Z0.BitMatrix`1<T>
    IL_00B6: ret
    IL_00B7: ldarga.s A
    IL_00B9: ldarga.s B
    IL_00BB: ldarg.3
    IL_00BC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C1: ldobj Z0.BitMatrix`1<T>
    IL_00C6: ret
    IL_00C7: ldarga.s A
    IL_00C9: ldarga.s B
    IL_00CB: ldarg.3
    IL_00CC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D1: ldobj Z0.BitMatrix`1<T>
    IL_00D6: ret
    IL_00D7: ldarga.s A
    IL_00D9: ldarga.s B
    IL_00DB: ldarg.3
    IL_00DC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E1: ldobj Z0.BitMatrix`1<T>
    IL_00E6: ret
    IL_00E7: ldarga.s A
    IL_00E9: ldarga.s B
    IL_00EB: ldarg.3
    IL_00EC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00F1: ldobj Z0.BitMatrix`1<T>
    IL_00F6: ret
    IL_00F7: ldarga.s A
    IL_00F9: ldarga.s B
    IL_00FB: ldarg.3
    IL_00FC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0101: ldobj Z0.BitMatrix`1<T>
    IL_0106: ret
    IL_0107: ldarga.s A
    IL_0109: ldarga.s B
    IL_010B: ldarg.3
    IL_010C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0111: ldobj Z0.BitMatrix`1<T>
    IL_0116: ret
    IL_0117: ldarga.s A
    IL_0119: ldarga.s B
    IL_011B: ldarg.3
    IL_011C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0121: ldobj Z0.BitMatrix`1<T>
    IL_0126: ret
    IL_0127: ldarga.s A
    IL_0129: ldarga.s B
    IL_012B: ldarg.3
    IL_012C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0131: ldobj Z0.BitMatrix`1<T>
    IL_0136: ret
    IL_0137: ldarg.0
    IL_0138: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_013D: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0142: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664013, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
// IL
BitMatrix<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitMatrix<ulong> A, BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0051,IL_0057,IL_0127,IL_00B7,IL_0107,IL_00D7,IL_0097,IL_0077,IL_0087,IL_00A7,IL_00E7,IL_00F7,IL_00C7,IL_0117,IL_0067,IL_004B)
    IL_0046: br IL_0137
    IL_004B: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::true<T>()
    IL_0050: ret
    IL_0051: call Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::false<T>()
    IL_0056: ret
    IL_0057: ldarga.s A
    IL_0059: ldarga.s B
    IL_005B: ldarg.3
    IL_005C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0061: ldobj Z0.BitMatrix`1<T>
    IL_0066: ret
    IL_0067: ldarga.s A
    IL_0069: ldarga.s B
    IL_006B: ldarg.3
    IL_006C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nand<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0071: ldobj Z0.BitMatrix`1<T>
    IL_0076: ret
    IL_0077: ldarga.s A
    IL_0079: ldarga.s B
    IL_007B: ldarg.3
    IL_007C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::or<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0081: ldobj Z0.BitMatrix`1<T>
    IL_0086: ret
    IL_0087: ldarga.s A
    IL_0089: ldarga.s B
    IL_008B: ldarg.3
    IL_008C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0091: ldobj Z0.BitMatrix`1<T>
    IL_0096: ret
    IL_0097: ldarga.s A
    IL_0099: ldarga.s B
    IL_009B: ldarg.3
    IL_009C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00A1: ldobj Z0.BitMatrix`1<T>
    IL_00A6: ret
    IL_00A7: ldarga.s A
    IL_00A9: ldarga.s B
    IL_00AB: ldarg.3
    IL_00AC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::xnor<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00B1: ldobj Z0.BitMatrix`1<T>
    IL_00B6: ret
    IL_00B7: ldarga.s A
    IL_00B9: ldarga.s B
    IL_00BB: ldarg.3
    IL_00BC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::left<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00C1: ldobj Z0.BitMatrix`1<T>
    IL_00C6: ret
    IL_00C7: ldarga.s A
    IL_00C9: ldarga.s B
    IL_00CB: ldarg.3
    IL_00CC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::lnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00D1: ldobj Z0.BitMatrix`1<T>
    IL_00D6: ret
    IL_00D7: ldarga.s A
    IL_00D9: ldarga.s B
    IL_00DB: ldarg.3
    IL_00DC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::right<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00E1: ldobj Z0.BitMatrix`1<T>
    IL_00E6: ret
    IL_00E7: ldarga.s A
    IL_00E9: ldarga.s B
    IL_00EB: ldarg.3
    IL_00EC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::rnot<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_00F1: ldobj Z0.BitMatrix`1<T>
    IL_00F6: ret
    IL_00F7: ldarga.s A
    IL_00F9: ldarga.s B
    IL_00FB: ldarg.3
    IL_00FC: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::impl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0101: ldobj Z0.BitMatrix`1<T>
    IL_0106: ret
    IL_0107: ldarga.s A
    IL_0109: ldarga.s B
    IL_010B: ldarg.3
    IL_010C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::nonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0111: ldobj Z0.BitMatrix`1<T>
    IL_0116: ret
    IL_0117: ldarga.s A
    IL_0119: ldarga.s B
    IL_011B: ldarg.3
    IL_011C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0121: ldobj Z0.BitMatrix`1<T>
    IL_0126: ret
    IL_0127: ldarga.s A
    IL_0129: ldarga.s B
    IL_012B: ldarg.3
    IL_012C: call Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::cnonimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0131: ldobj Z0.BitMatrix`1<T>
    IL_0136: ret
    IL_0137: ldarg.0
    IL_0138: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_013D: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0142: throw
}
------------------------------------------------------------------------------------------------------------------------
