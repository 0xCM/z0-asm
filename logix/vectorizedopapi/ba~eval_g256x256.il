// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<Int16> eval<Int16>(BinaryArithmeticKind:byte kind, Vector256<Int16> x, Vector256<Int16> y)
// IL
Vector256<Int16> eval<Int16>(BinaryArithmeticKind:byte kind, Vector256<Int16> x, Vector256<Int16> y)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
// Id := 100664088, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
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
