// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> eval<byte>(ComparisonKind:byte kind, Vector256<byte> a, Vector256<byte> b)
// IL
Vector256<byte> eval<byte>(ComparisonKind:byte kind, Vector256<byte> a, Vector256<byte> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
// IL
Vector256<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> eval<ushort>(ComparisonKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
// IL
Vector256<ushort> eval<ushort>(ComparisonKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<short> eval<short>(ComparisonKind:byte kind, Vector256<short> a, Vector256<short> b)
// IL
Vector256<short> eval<short>(ComparisonKind:byte kind, Vector256<short> a, Vector256<short> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> eval<uint>(ComparisonKind:byte kind, Vector256<uint> a, Vector256<uint> b)
// IL
Vector256<uint> eval<uint>(ComparisonKind:byte kind, Vector256<uint> a, Vector256<uint> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> eval<int>(ComparisonKind:byte kind, Vector256<int> a, Vector256<int> b)
// IL
Vector256<int> eval<int>(ComparisonKind:byte kind, Vector256<int> a, Vector256<int> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> eval<ulong>(ComparisonKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
// IL
Vector256<ulong> eval<ulong>(ComparisonKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664075, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> eval<long>(ComparisonKind:byte kind, Vector256<long> a, Vector256<long> b)
// IL
Vector256<long> eval<long>(ComparisonKind:byte kind, Vector256<long> a, Vector256<long> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector256<byte> a, Vector256<byte> b)
// IL
Vector256<byte> eval<byte>(BinaryBitLogicKind:byte kind, Vector256<byte> a, Vector256<byte> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
// IL
Vector256<sbyte> eval<sbyte>(BinaryBitLogicKind:byte kind, Vector256<sbyte> a, Vector256<sbyte> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
// IL
Vector256<ushort> eval<ushort>(BinaryBitLogicKind:byte kind, Vector256<ushort> a, Vector256<ushort> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<short> eval<short>(BinaryBitLogicKind:byte kind, Vector256<short> a, Vector256<short> b)
// IL
Vector256<short> eval<short>(BinaryBitLogicKind:byte kind, Vector256<short> a, Vector256<short> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector256<uint> a, Vector256<uint> b)
// IL
Vector256<uint> eval<uint>(BinaryBitLogicKind:byte kind, Vector256<uint> a, Vector256<uint> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> eval<int>(BinaryBitLogicKind:byte kind, Vector256<int> a, Vector256<int> b)
// IL
Vector256<int> eval<int>(BinaryBitLogicKind:byte kind, Vector256<int> a, Vector256<int> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
// IL
Vector256<ulong> eval<ulong>(BinaryBitLogicKind:byte kind, Vector256<ulong> a, Vector256<ulong> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664077, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> eval<long>(BinaryBitLogicKind:byte kind, Vector256<long> a, Vector256<long> b)
// IL
Vector256<long> eval<long>(BinaryBitLogicKind:byte kind, Vector256<long> a, Vector256<long> b)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0053,IL_005B,IL_00C3,IL_008B,IL_00B3,IL_0093,IL_007B,IL_006B,IL_0073,IL_0083,IL_00A3,IL_00AB,IL_009B,IL_00BB,IL_0063,IL_004B)
    IL_0046: br IL_00CB
    IL_004B: ldarg.1
    IL_004C: ldarg.2
    IL_004D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::true<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0052: ret
    IL_0053: ldarg.1
    IL_0054: ldarg.2
    IL_0055: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::false<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_005A: ret
    IL_005B: ldarg.1
    IL_005C: ldarg.2
    IL_005D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::and<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0062: ret
    IL_0063: ldarg.1
    IL_0064: ldarg.2
    IL_0065: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_006A: ret
    IL_006B: ldarg.1
    IL_006C: ldarg.2
    IL_006D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::or<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0072: ret
    IL_0073: ldarg.1
    IL_0074: ldarg.2
    IL_0075: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_007A: ret
    IL_007B: ldarg.1
    IL_007C: ldarg.2
    IL_007D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0082: ret
    IL_0083: ldarg.1
    IL_0084: ldarg.2
    IL_0085: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::xnor<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_008A: ret
    IL_008B: ldarg.1
    IL_008C: ldarg.2
    IL_008D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::left<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0092: ret
    IL_0093: ldarg.1
    IL_0094: ldarg.2
    IL_0095: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::right<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_009A: ret
    IL_009B: ldarg.1
    IL_009C: ldarg.2
    IL_009D: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00A2: ret
    IL_00A3: ldarg.1
    IL_00A4: ldarg.2
    IL_00A5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rnot<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00AA: ret
    IL_00AB: ldarg.1
    IL_00AC: ldarg.2
    IL_00AD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::impl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00B2: ret
    IL_00B3: ldarg.1
    IL_00B4: ldarg.2
    IL_00B5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::nonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00BA: ret
    IL_00BB: ldarg.1
    IL_00BC: ldarg.2
    IL_00BD: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00C2: ret
    IL_00C3: ldarg.1
    IL_00C4: ldarg.2
    IL_00C5: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::cnonimpl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_00CA: ret
    IL_00CB: ldarg.0
    IL_00CC: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00D1: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00D6: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector256<byte> x, Vector256<byte> y)
// IL
Vector256<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector256<byte> x, Vector256<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector256<sbyte> x, Vector256<sbyte> y)
// IL
Vector256<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector256<sbyte> x, Vector256<sbyte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector256<ushort> x, Vector256<ushort> y)
// IL
Vector256<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector256<ushort> x, Vector256<ushort> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<short> eval<short>(BinaryArithmeticKind:byte kind, Vector256<short> x, Vector256<short> y)
// IL
Vector256<short> eval<short>(BinaryArithmeticKind:byte kind, Vector256<short> x, Vector256<short> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector256<uint> x, Vector256<uint> y)
// IL
Vector256<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector256<uint> x, Vector256<uint> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> eval<int>(BinaryArithmeticKind:byte kind, Vector256<int> x, Vector256<int> y)
// IL
Vector256<int> eval<int>(BinaryArithmeticKind:byte kind, Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector256<ulong> x, Vector256<ulong> y)
// IL
Vector256<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector256<ulong> x, Vector256<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<long> eval<long>(BinaryArithmeticKind:byte kind, Vector256<long> x, Vector256<long> y)
// IL
Vector256<long> eval<long>(BinaryArithmeticKind:byte kind, Vector256<long> x, Vector256<long> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<float> eval<float>(BinaryArithmeticKind:byte kind, Vector256<float> x, Vector256<float> y)
// IL
Vector256<float> eval<float>(BinaryArithmeticKind:byte kind, Vector256<float> x, Vector256<float> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664083, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<double> eval<double>(BinaryArithmeticKind:byte kind, Vector256<double> x, Vector256<double> y)
// IL
Vector256<double> eval<double>(BinaryArithmeticKind:byte kind, Vector256<double> x, Vector256<double> y)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0012
    IL_0008: br.s IL_001A
    IL_000A: ldarg.1
    IL_000B: ldarg.2
    IL_000C: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
