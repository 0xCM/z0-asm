// Id := 100664017, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>)
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
