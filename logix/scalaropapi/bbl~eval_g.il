// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
// Id := 100664042, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.BinaryBitLogicKind,T,T)
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
