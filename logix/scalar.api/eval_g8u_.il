// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// byte eval<byte>(BinaryBitLogicKind:byte kind, byte a, byte b)
// IL
byte eval<byte>(BinaryBitLogicKind:byte kind, byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// sbyte eval<sbyte>(BinaryBitLogicKind:byte kind, sbyte a, sbyte b)
// IL
sbyte eval<sbyte>(BinaryBitLogicKind:byte kind, sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// ushort eval<ushort>(BinaryBitLogicKind:byte kind, ushort a, ushort b)
// IL
ushort eval<ushort>(BinaryBitLogicKind:byte kind, ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// short eval<short>(BinaryBitLogicKind:byte kind, short a, short b)
// IL
short eval<short>(BinaryBitLogicKind:byte kind, short a, short b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// uint eval<uint>(BinaryBitLogicKind:byte kind, uint a, uint b)
// IL
uint eval<uint>(BinaryBitLogicKind:byte kind, uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// int eval<int>(BinaryBitLogicKind:byte kind, int a, int b)
// IL
int eval<int>(BinaryBitLogicKind:byte kind, int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// ulong eval<ulong>(BinaryBitLogicKind:byte kind, ulong a, ulong b)
// IL
ulong eval<ulong>(BinaryBitLogicKind:byte kind, ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
// long eval<long>(BinaryBitLogicKind:byte kind, long a, long b)
// IL
long eval<long>(BinaryBitLogicKind:byte kind, long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// byte eval<byte>(UnaryBitLogicKind:byte kind, byte a)
// IL
byte eval<byte>(UnaryBitLogicKind:byte kind, byte a)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// sbyte eval<sbyte>(UnaryBitLogicKind:byte kind, sbyte a)
// IL
sbyte eval<sbyte>(UnaryBitLogicKind:byte kind, sbyte a)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// ushort eval<ushort>(UnaryBitLogicKind:byte kind, ushort a)
// IL
ushort eval<ushort>(UnaryBitLogicKind:byte kind, ushort a)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// short eval<short>(UnaryBitLogicKind:byte kind, short a)
// IL
short eval<short>(UnaryBitLogicKind:byte kind, short a)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// uint eval<uint>(UnaryBitLogicKind:byte kind, uint a)
// IL
uint eval<uint>(UnaryBitLogicKind:byte kind, uint a)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// int eval<int>(UnaryBitLogicKind:byte kind, int a)
// IL
int eval<int>(UnaryBitLogicKind:byte kind, int a)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
// ulong eval<ulong>(UnaryBitLogicKind:byte kind, ulong a)
// IL
ulong eval<ulong>(UnaryBitLogicKind:byte kind, ulong a)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.UnaryBitLogicKind,T)
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
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// byte eval<byte>(ComparisonKind:byte kind, byte a, byte b)
// IL
byte eval<byte>(ComparisonKind:byte kind, byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// sbyte eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
// IL
sbyte eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// ushort eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
// IL
ushort eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// short eval<short>(ComparisonKind:byte kind, short a, short b)
// IL
short eval<short>(ComparisonKind:byte kind, short a, short b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// uint eval<uint>(ComparisonKind:byte kind, uint a, uint b)
// IL
uint eval<uint>(ComparisonKind:byte kind, uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// int eval<int>(ComparisonKind:byte kind, int a, int b)
// IL
int eval<int>(ComparisonKind:byte kind, int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// ulong eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
// IL
ulong eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// long eval<long>(ComparisonKind:byte kind, long a, long b)
// IL
long eval<long>(ComparisonKind:byte kind, long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// byte eval<byte>(TernaryBitLogicKind:byte kind, byte a, byte b, byte c)
// IL
byte eval<byte>(TernaryBitLogicKind:byte kind, byte a, byte b, byte c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// sbyte eval<sbyte>(TernaryBitLogicKind:byte kind, sbyte a, sbyte b, sbyte c)
// IL
sbyte eval<sbyte>(TernaryBitLogicKind:byte kind, sbyte a, sbyte b, sbyte c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// ushort eval<ushort>(TernaryBitLogicKind:byte kind, ushort a, ushort b, ushort c)
// IL
ushort eval<ushort>(TernaryBitLogicKind:byte kind, ushort a, ushort b, ushort c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// short eval<short>(TernaryBitLogicKind:byte kind, short a, short b, short c)
// IL
short eval<short>(TernaryBitLogicKind:byte kind, short a, short b, short c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// uint eval<uint>(TernaryBitLogicKind:byte kind, uint a, uint b, uint c)
// IL
uint eval<uint>(TernaryBitLogicKind:byte kind, uint a, uint b, uint c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// int eval<int>(TernaryBitLogicKind:byte kind, int a, int b, int c)
// IL
int eval<int>(TernaryBitLogicKind:byte kind, int a, int b, int c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// ulong eval<ulong>(TernaryBitLogicKind:byte kind, ulong a, ulong b, ulong c)
// IL
ulong eval<ulong>(TernaryBitLogicKind:byte kind, ulong a, ulong b, ulong c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.Logix.ScalarOpApi::eval<T>(Z0.TernaryBitLogicKind,T,T,T)
// long eval<long>(TernaryBitLogicKind:byte kind, long a, long b, long c)
// IL
long eval<long>(TernaryBitLogicKind:byte kind, long a, long b, long c)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0189,IL_0192,IL_019B,IL_01A4,IL_01AD,IL_01B6,IL_01BF,IL_01C8,IL_01D1,IL_01DA,IL_01E3,IL_01EC,IL_01F5,IL_01FE,IL_0207,IL_0210,IL_0219,IL_0222,IL_022B,IL_0234,IL_023D,IL_0246,IL_024F,IL_0258,IL_0261,IL_026A,IL_0273,IL_027C,IL_0285,IL_028E,IL_0297,IL_02A0,IL_02A9,IL_02B2,IL_02BB,IL_02C4,IL_02CD,IL_02D6,IL_02DF,IL_02E8,IL_02F1,IL_02FA,IL_0303,IL_030C,IL_0315,IL_031E,IL_0327,IL_0330,IL_0339,IL_0342,IL_034B,IL_0354,IL_035D,IL_0366,IL_036F,IL_0378,IL_0381,IL_038A,IL_0393,IL_039C,IL_03A5,IL_03AE,IL_03B7,IL_03C0,IL_03C9,IL_03D2,IL_03DB,IL_03E4,IL_03ED,IL_03F6,IL_03FF,IL_0408,IL_0411,IL_041A,IL_0423,IL_042C,IL_0435,IL_043E,IL_0447,IL_0450,IL_0459,IL_0462,IL_046B,IL_0474,IL_047D,IL_0486,IL_048F,IL_0498,IL_04A1,IL_04AA,IL_04B3,IL_04BC,IL_04C5,IL_04CE,IL_04D7)
    IL_0184: br IL_04E0
    IL_0189: ldarg.1
    IL_018A: ldarg.2
    IL_018B: ldarg.3
    IL_018C: call T Z0.Logix.ScalarOps::f01<T>(T,T,T)
    IL_0191: ret
    IL_0192: ldarg.1
    IL_0193: ldarg.2
    IL_0194: ldarg.3
    IL_0195: call T Z0.Logix.ScalarOps::f02<T>(T,T,T)
    IL_019A: ret
    IL_019B: ldarg.1
    IL_019C: ldarg.2
    IL_019D: ldarg.3
    IL_019E: call T Z0.Logix.ScalarOps::f03<T>(T,T,T)
    IL_01A3: ret
    IL_01A4: ldarg.1
    IL_01A5: ldarg.2
    IL_01A6: ldarg.3
    IL_01A7: call T Z0.Logix.ScalarOps::f04<T>(T,T,T)
    IL_01AC: ret
    IL_01AD: ldarg.1
    IL_01AE: ldarg.2
    IL_01AF: ldarg.3
    IL_01B0: call T Z0.Logix.ScalarOps::f05<T>(T,T,T)
    IL_01B5: ret
    IL_01B6: ldarg.1
    IL_01B7: ldarg.2
    IL_01B8: ldarg.3
    IL_01B9: call T Z0.Logix.ScalarOps::f06<T>(T,T,T)
    IL_01BE: ret
    IL_01BF: ldarg.1
    IL_01C0: ldarg.2
    IL_01C1: ldarg.3
    IL_01C2: call T Z0.Logix.ScalarOps::f07<T>(T,T,T)
    IL_01C7: ret
    IL_01C8: ldarg.1
    IL_01C9: ldarg.2
    IL_01CA: ldarg.3
    IL_01CB: call T Z0.Logix.ScalarOps::f08<T>(T,T,T)
    IL_01D0: ret
    IL_01D1: ldarg.1
    IL_01D2: ldarg.2
    IL_01D3: ldarg.3
    IL_01D4: call T Z0.Logix.ScalarOps::f09<T>(T,T,T)
    IL_01D9: ret
    IL_01DA: ldarg.1
    IL_01DB: ldarg.2
    IL_01DC: ldarg.3
    IL_01DD: call T Z0.Logix.ScalarOps::f0a<T>(T,T,T)
    IL_01E2: ret
    IL_01E3: ldarg.1
    IL_01E4: ldarg.2
    IL_01E5: ldarg.3
    IL_01E6: call T Z0.Logix.ScalarOps::f0b<T>(T,T,T)
    IL_01EB: ret
    IL_01EC: ldarg.1
    IL_01ED: ldarg.2
    IL_01EE: ldarg.3
    IL_01EF: call T Z0.Logix.ScalarOps::f0c<T>(T,T,T)
    IL_01F4: ret
    IL_01F5: ldarg.1
    IL_01F6: ldarg.2
    IL_01F7: ldarg.3
    IL_01F8: call T Z0.Logix.ScalarOps::f0d<T>(T,T,T)
    IL_01FD: ret
    IL_01FE: ldarg.1
    IL_01FF: ldarg.2
    IL_0200: ldarg.3
    IL_0201: call T Z0.Logix.ScalarOps::f0e<T>(T,T,T)
    IL_0206: ret
    IL_0207: ldarg.1
    IL_0208: ldarg.2
    IL_0209: ldarg.3
    IL_020A: call T Z0.Logix.ScalarOps::f0f<T>(T,T,T)
    IL_020F: ret
    IL_0210: ldarg.1
    IL_0211: ldarg.2
    IL_0212: ldarg.3
    IL_0213: call T Z0.Logix.ScalarOps::f10<T>(T,T,T)
    IL_0218: ret
    IL_0219: ldarg.1
    IL_021A: ldarg.2
    IL_021B: ldarg.3
    IL_021C: call T Z0.Logix.ScalarOps::f11<T>(T,T,T)
    IL_0221: ret
    IL_0222: ldarg.1
    IL_0223: ldarg.2
    IL_0224: ldarg.3
    IL_0225: call T Z0.Logix.ScalarOps::f12<T>(T,T,T)
    IL_022A: ret
    IL_022B: ldarg.1
    IL_022C: ldarg.2
    IL_022D: ldarg.3
    IL_022E: call T Z0.Logix.ScalarOps::f13<T>(T,T,T)
    IL_0233: ret
    IL_0234: ldarg.1
    IL_0235: ldarg.2
    IL_0236: ldarg.3
    IL_0237: call T Z0.Logix.ScalarOps::f14<T>(T,T,T)
    IL_023C: ret
    IL_023D: ldarg.1
    IL_023E: ldarg.2
    IL_023F: ldarg.3
    IL_0240: call T Z0.Logix.ScalarOps::f15<T>(T,T,T)
    IL_0245: ret
    IL_0246: ldarg.1
    IL_0247: ldarg.2
    IL_0248: ldarg.3
    IL_0249: call T Z0.Logix.ScalarOps::f16<T>(T,T,T)
    IL_024E: ret
    IL_024F: ldarg.1
    IL_0250: ldarg.2
    IL_0251: ldarg.3
    IL_0252: call T Z0.Logix.ScalarOps::f17<T>(T,T,T)
    IL_0257: ret
    IL_0258: ldarg.1
    IL_0259: ldarg.2
    IL_025A: ldarg.3
    IL_025B: call T Z0.Logix.ScalarOps::f18<T>(T,T,T)
    IL_0260: ret
    IL_0261: ldarg.1
    IL_0262: ldarg.2
    IL_0263: ldarg.3
    IL_0264: call T Z0.Logix.ScalarOps::f19<T>(T,T,T)
    IL_0269: ret
    IL_026A: ldarg.1
    IL_026B: ldarg.2
    IL_026C: ldarg.3
    IL_026D: call T Z0.Logix.ScalarOps::f1a<T>(T,T,T)
    IL_0272: ret
    IL_0273: ldarg.1
    IL_0274: ldarg.2
    IL_0275: ldarg.3
    IL_0276: call T Z0.Logix.ScalarOps::f1b<T>(T,T,T)
    IL_027B: ret
    IL_027C: ldarg.1
    IL_027D: ldarg.2
    IL_027E: ldarg.3
    IL_027F: call T Z0.Logix.ScalarOps::f1c<T>(T,T,T)
    IL_0284: ret
    IL_0285: ldarg.1
    IL_0286: ldarg.2
    IL_0287: ldarg.3
    IL_0288: call T Z0.Logix.ScalarOps::f1d<T>(T,T,T)
    IL_028D: ret
    IL_028E: ldarg.1
    IL_028F: ldarg.2
    IL_0290: ldarg.3
    IL_0291: call T Z0.Logix.ScalarOps::f1e<T>(T,T,T)
    IL_0296: ret
    IL_0297: ldarg.1
    IL_0298: ldarg.2
    IL_0299: ldarg.3
    IL_029A: call T Z0.Logix.ScalarOps::f1f<T>(T,T,T)
    IL_029F: ret
    IL_02A0: ldarg.1
    IL_02A1: ldarg.2
    IL_02A2: ldarg.3
    IL_02A3: call T Z0.Logix.ScalarOps::f20<T>(T,T,T)
    IL_02A8: ret
    IL_02A9: ldarg.1
    IL_02AA: ldarg.2
    IL_02AB: ldarg.3
    IL_02AC: call T Z0.Logix.ScalarOps::f21<T>(T,T,T)
    IL_02B1: ret
    IL_02B2: ldarg.1
    IL_02B3: ldarg.2
    IL_02B4: ldarg.3
    IL_02B5: call T Z0.Logix.ScalarOps::f22<T>(T,T,T)
    IL_02BA: ret
    IL_02BB: ldarg.1
    IL_02BC: ldarg.2
    IL_02BD: ldarg.3
    IL_02BE: call T Z0.Logix.ScalarOps::f23<T>(T,T,T)
    IL_02C3: ret
    IL_02C4: ldarg.1
    IL_02C5: ldarg.2
    IL_02C6: ldarg.3
    IL_02C7: call T Z0.Logix.ScalarOps::f24<T>(T,T,T)
    IL_02CC: ret
    IL_02CD: ldarg.1
    IL_02CE: ldarg.2
    IL_02CF: ldarg.3
    IL_02D0: call T Z0.Logix.ScalarOps::f25<T>(T,T,T)
    IL_02D5: ret
    IL_02D6: ldarg.1
    IL_02D7: ldarg.2
    IL_02D8: ldarg.3
    IL_02D9: call T Z0.Logix.ScalarOps::f26<T>(T,T,T)
    IL_02DE: ret
    IL_02DF: ldarg.1
    IL_02E0: ldarg.2
    IL_02E1: ldarg.3
    IL_02E2: call T Z0.Logix.ScalarOps::f27<T>(T,T,T)
    IL_02E7: ret
    IL_02E8: ldarg.1
    IL_02E9: ldarg.2
    IL_02EA: ldarg.3
    IL_02EB: call T Z0.Logix.ScalarOps::f28<T>(T,T,T)
    IL_02F0: ret
    IL_02F1: ldarg.1
    IL_02F2: ldarg.2
    IL_02F3: ldarg.3
    IL_02F4: call T Z0.Logix.ScalarOps::f29<T>(T,T,T)
    IL_02F9: ret
    IL_02FA: ldarg.1
    IL_02FB: ldarg.2
    IL_02FC: ldarg.3
    IL_02FD: call T Z0.Logix.ScalarOps::f2a<T>(T,T,T)
    IL_0302: ret
    IL_0303: ldarg.1
    IL_0304: ldarg.2
    IL_0305: ldarg.3
    IL_0306: call T Z0.Logix.ScalarOps::f2b<T>(T,T,T)
    IL_030B: ret
    IL_030C: ldarg.1
    IL_030D: ldarg.2
    IL_030E: ldarg.3
    IL_030F: call T Z0.Logix.ScalarOps::f2c<T>(T,T,T)
    IL_0314: ret
    IL_0315: ldarg.1
    IL_0316: ldarg.2
    IL_0317: ldarg.3
    IL_0318: call T Z0.Logix.ScalarOps::f2d<T>(T,T,T)
    IL_031D: ret
    IL_031E: ldarg.1
    IL_031F: ldarg.2
    IL_0320: ldarg.3
    IL_0321: call T Z0.Logix.ScalarOps::f2e<T>(T,T,T)
    IL_0326: ret
    IL_0327: ldarg.1
    IL_0328: ldarg.2
    IL_0329: ldarg.3
    IL_032A: call T Z0.Logix.ScalarOps::f2f<T>(T,T,T)
    IL_032F: ret
    IL_0330: ldarg.1
    IL_0331: ldarg.2
    IL_0332: ldarg.3
    IL_0333: call T Z0.Logix.ScalarOps::f30<T>(T,T,T)
    IL_0338: ret
    IL_0339: ldarg.1
    IL_033A: ldarg.2
    IL_033B: ldarg.3
    IL_033C: call T Z0.Logix.ScalarOps::f31<T>(T,T,T)
    IL_0341: ret
    IL_0342: ldarg.1
    IL_0343: ldarg.2
    IL_0344: ldarg.3
    IL_0345: call T Z0.Logix.ScalarOps::f32<T>(T,T,T)
    IL_034A: ret
    IL_034B: ldarg.1
    IL_034C: ldarg.2
    IL_034D: ldarg.3
    IL_034E: call T Z0.Logix.ScalarOps::f33<T>(T,T,T)
    IL_0353: ret
    IL_0354: ldarg.1
    IL_0355: ldarg.2
    IL_0356: ldarg.3
    IL_0357: call T Z0.Logix.ScalarOps::f34<T>(T,T,T)
    IL_035C: ret
    IL_035D: ldarg.1
    IL_035E: ldarg.2
    IL_035F: ldarg.3
    IL_0360: call T Z0.Logix.ScalarOps::f35<T>(T,T,T)
    IL_0365: ret
    IL_0366: ldarg.1
    IL_0367: ldarg.2
    IL_0368: ldarg.3
    IL_0369: call T Z0.Logix.ScalarOps::f36<T>(T,T,T)
    IL_036E: ret
    IL_036F: ldarg.1
    IL_0370: ldarg.2
    IL_0371: ldarg.3
    IL_0372: call T Z0.Logix.ScalarOps::f37<T>(T,T,T)
    IL_0377: ret
    IL_0378: ldarg.1
    IL_0379: ldarg.2
    IL_037A: ldarg.3
    IL_037B: call T Z0.Logix.ScalarOps::f38<T>(T,T,T)
    IL_0380: ret
    IL_0381: ldarg.1
    IL_0382: ldarg.2
    IL_0383: ldarg.3
    IL_0384: call T Z0.Logix.ScalarOps::f39<T>(T,T,T)
    IL_0389: ret
    IL_038A: ldarg.1
    IL_038B: ldarg.2
    IL_038C: ldarg.3
    IL_038D: call T Z0.Logix.ScalarOps::f3a<T>(T,T,T)
    IL_0392: ret
    IL_0393: ldarg.1
    IL_0394: ldarg.2
    IL_0395: ldarg.3
    IL_0396: call T Z0.Logix.ScalarOps::f3b<T>(T,T,T)
    IL_039B: ret
    IL_039C: ldarg.1
    IL_039D: ldarg.2
    IL_039E: ldarg.3
    IL_039F: call T Z0.Logix.ScalarOps::f3c<T>(T,T,T)
    IL_03A4: ret
    IL_03A5: ldarg.1
    IL_03A6: ldarg.2
    IL_03A7: ldarg.3
    IL_03A8: call T Z0.Logix.ScalarOps::f3d<T>(T,T,T)
    IL_03AD: ret
    IL_03AE: ldarg.1
    IL_03AF: ldarg.2
    IL_03B0: ldarg.3
    IL_03B1: call T Z0.Logix.ScalarOps::f3e<T>(T,T,T)
    IL_03B6: ret
    IL_03B7: ldarg.1
    IL_03B8: ldarg.2
    IL_03B9: ldarg.3
    IL_03BA: call T Z0.Logix.ScalarOps::f3f<T>(T,T,T)
    IL_03BF: ret
    IL_03C0: ldarg.1
    IL_03C1: ldarg.2
    IL_03C2: ldarg.3
    IL_03C3: call T Z0.Logix.ScalarOps::f40<T>(T,T,T)
    IL_03C8: ret
    IL_03C9: ldarg.1
    IL_03CA: ldarg.2
    IL_03CB: ldarg.3
    IL_03CC: call T Z0.Logix.ScalarOps::f41<T>(T,T,T)
    IL_03D1: ret
    IL_03D2: ldarg.1
    IL_03D3: ldarg.2
    IL_03D4: ldarg.3
    IL_03D5: call T Z0.Logix.ScalarOps::f42<T>(T,T,T)
    IL_03DA: ret
    IL_03DB: ldarg.1
    IL_03DC: ldarg.2
    IL_03DD: ldarg.3
    IL_03DE: call T Z0.Logix.ScalarOps::f43<T>(T,T,T)
    IL_03E3: ret
    IL_03E4: ldarg.1
    IL_03E5: ldarg.2
    IL_03E6: ldarg.3
    IL_03E7: call T Z0.Logix.ScalarOps::f44<T>(T,T,T)
    IL_03EC: ret
    IL_03ED: ldarg.1
    IL_03EE: ldarg.2
    IL_03EF: ldarg.3
    IL_03F0: call T Z0.Logix.ScalarOps::f45<T>(T,T,T)
    IL_03F5: ret
    IL_03F6: ldarg.1
    IL_03F7: ldarg.2
    IL_03F8: ldarg.3
    IL_03F9: call T Z0.Logix.ScalarOps::f46<T>(T,T,T)
    IL_03FE: ret
    IL_03FF: ldarg.1
    IL_0400: ldarg.2
    IL_0401: ldarg.3
    IL_0402: call T Z0.Logix.ScalarOps::f47<T>(T,T,T)
    IL_0407: ret
    IL_0408: ldarg.1
    IL_0409: ldarg.2
    IL_040A: ldarg.3
    IL_040B: call T Z0.Logix.ScalarOps::f48<T>(T,T,T)
    IL_0410: ret
    IL_0411: ldarg.1
    IL_0412: ldarg.2
    IL_0413: ldarg.3
    IL_0414: call T Z0.Logix.ScalarOps::f49<T>(T,T,T)
    IL_0419: ret
    IL_041A: ldarg.1
    IL_041B: ldarg.2
    IL_041C: ldarg.3
    IL_041D: call T Z0.Logix.ScalarOps::f4a<T>(T,T,T)
    IL_0422: ret
    IL_0423: ldarg.1
    IL_0424: ldarg.2
    IL_0425: ldarg.3
    IL_0426: call T Z0.Logix.ScalarOps::f4b<T>(T,T,T)
    IL_042B: ret
    IL_042C: ldarg.1
    IL_042D: ldarg.2
    IL_042E: ldarg.3
    IL_042F: call T Z0.Logix.ScalarOps::f4c<T>(T,T,T)
    IL_0434: ret
    IL_0435: ldarg.1
    IL_0436: ldarg.2
    IL_0437: ldarg.3
    IL_0438: call T Z0.Logix.ScalarOps::f4d<T>(T,T,T)
    IL_043D: ret
    IL_043E: ldarg.1
    IL_043F: ldarg.2
    IL_0440: ldarg.3
    IL_0441: call T Z0.Logix.ScalarOps::f4e<T>(T,T,T)
    IL_0446: ret
    IL_0447: ldarg.1
    IL_0448: ldarg.2
    IL_0449: ldarg.3
    IL_044A: call T Z0.Logix.ScalarOps::f4f<T>(T,T,T)
    IL_044F: ret
    IL_0450: ldarg.1
    IL_0451: ldarg.2
    IL_0452: ldarg.3
    IL_0453: call T Z0.Logix.ScalarOps::f50<T>(T,T,T)
    IL_0458: ret
    IL_0459: ldarg.1
    IL_045A: ldarg.2
    IL_045B: ldarg.3
    IL_045C: call T Z0.Logix.ScalarOps::f51<T>(T,T,T)
    IL_0461: ret
    IL_0462: ldarg.1
    IL_0463: ldarg.2
    IL_0464: ldarg.3
    IL_0465: call T Z0.Logix.ScalarOps::f52<T>(T,T,T)
    IL_046A: ret
    IL_046B: ldarg.1
    IL_046C: ldarg.2
    IL_046D: ldarg.3
    IL_046E: call T Z0.Logix.ScalarOps::f53<T>(T,T,T)
    IL_0473: ret
    IL_0474: ldarg.1
    IL_0475: ldarg.2
    IL_0476: ldarg.3
    IL_0477: call T Z0.Logix.ScalarOps::f54<T>(T,T,T)
    IL_047C: ret
    IL_047D: ldarg.1
    IL_047E: ldarg.2
    IL_047F: ldarg.3
    IL_0480: call T Z0.Logix.ScalarOps::f55<T>(T,T,T)
    IL_0485: ret
    IL_0486: ldarg.1
    IL_0487: ldarg.2
    IL_0488: ldarg.3
    IL_0489: call T Z0.Logix.ScalarOps::f56<T>(T,T,T)
    IL_048E: ret
    IL_048F: ldarg.1
    IL_0490: ldarg.2
    IL_0491: ldarg.3
    IL_0492: call T Z0.Logix.ScalarOps::f57<T>(T,T,T)
    IL_0497: ret
    IL_0498: ldarg.1
    IL_0499: ldarg.2
    IL_049A: ldarg.3
    IL_049B: call T Z0.Logix.ScalarOps::f58<T>(T,T,T)
    IL_04A0: ret
    IL_04A1: ldarg.1
    IL_04A2: ldarg.2
    IL_04A3: ldarg.3
    IL_04A4: call T Z0.Logix.ScalarOps::f59<T>(T,T,T)
    IL_04A9: ret
    IL_04AA: ldarg.1
    IL_04AB: ldarg.2
    IL_04AC: ldarg.3
    IL_04AD: call T Z0.Logix.ScalarOps::f5a<T>(T,T,T)
    IL_04B2: ret
    IL_04B3: ldarg.1
    IL_04B4: ldarg.2
    IL_04B5: ldarg.3
    IL_04B6: call T Z0.Logix.ScalarOps::f5b<T>(T,T,T)
    IL_04BB: ret
    IL_04BC: ldarg.1
    IL_04BD: ldarg.2
    IL_04BE: ldarg.3
    IL_04BF: call T Z0.Logix.ScalarOps::f5c<T>(T,T,T)
    IL_04C4: ret
    IL_04C5: ldarg.1
    IL_04C6: ldarg.2
    IL_04C7: ldarg.3
    IL_04C8: call T Z0.Logix.ScalarOps::f5d<T>(T,T,T)
    IL_04CD: ret
    IL_04CE: ldarg.1
    IL_04CF: ldarg.2
    IL_04D0: ldarg.3
    IL_04D1: call T Z0.Logix.ScalarOps::f5e<T>(T,T,T)
    IL_04D6: ret
    IL_04D7: ldarg.1
    IL_04D8: ldarg.2
    IL_04D9: ldarg.3
    IL_04DA: call T Z0.Logix.ScalarOps::f5f<T>(T,T,T)
    IL_04DF: ret
    IL_04E0: ldarg.0
    IL_04E1: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.TernaryBitLogicKind)
    IL_04E6: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_04EB: throw
}
------------------------------------------------------------------------------------------------------------------------
