// Id := 100664018, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>,Z0.BitMatrix`1<T>&)
// BitMatrix<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, BitMatrix<sbyte> A, BitMatrix<sbyte> B, ref BitMatrix<sbyte> Z)
// IL
BitMatrix<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, BitMatrix<sbyte> A, BitMatrix<sbyte> B, ref BitMatrix<sbyte> Z)
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
