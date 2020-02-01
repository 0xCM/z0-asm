// Z0.BitVector`1<T> Z0.Logix.BitVectorOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitVector`1<T>,Z0.BitVector`1<T>)
// BitVector<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
// IL
BitVector<byte> eval<byte>(BinaryBitLogicKind:byte kind, BitVector<byte> x, BitVector<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::true<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::false<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::and<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nand<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::or<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xnor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::left<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::right<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::lnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::rnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::impl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cnonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitVector`1<T> Z0.Logix.BitVectorOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitVector`1<T>,Z0.BitVector`1<T>)
// BitVector<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
// IL
BitVector<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, BitVector<ushort> x, BitVector<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::true<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::false<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::and<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nand<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::or<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xnor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::left<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::right<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::lnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::rnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::impl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cnonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitVector`1<T> Z0.Logix.BitVectorOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitVector`1<T>,Z0.BitVector`1<T>)
// BitVector<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
// IL
BitVector<uint> eval<uint>(BinaryBitLogicKind:byte kind, BitVector<uint> x, BitVector<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::true<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::false<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::and<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nand<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::or<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xnor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::left<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::right<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::lnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::rnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::impl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cnonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitVector`1<T> Z0.Logix.BitVectorOpApi::eval<T>(Z0.BinaryBitLogicKind,Z0.BitVector`1<T>,Z0.BitVector`1<T>)
// BitVector<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
// IL
BitVector<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::true<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::false<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::and<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nand<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::or<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::xnor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::left<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::right<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::lnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::rnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::impl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::nonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::cnonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
