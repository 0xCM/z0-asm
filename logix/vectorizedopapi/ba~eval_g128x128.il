// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector128<byte> x, Vector128<byte> y)
// IL
Vector128<byte> eval<byte>(BinaryArithmeticKind:byte kind, Vector128<byte> x, Vector128<byte> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y)
// IL
Vector128<sbyte> eval<sbyte>(BinaryArithmeticKind:byte kind, Vector128<sbyte> x, Vector128<sbyte> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector128<ushort> x, Vector128<ushort> y)
// IL
Vector128<ushort> eval<ushort>(BinaryArithmeticKind:byte kind, Vector128<ushort> x, Vector128<ushort> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<short> eval<short>(BinaryArithmeticKind:byte kind, Vector128<short> x, Vector128<short> y)
// IL
Vector128<short> eval<short>(BinaryArithmeticKind:byte kind, Vector128<short> x, Vector128<short> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector128<uint> x, Vector128<uint> y)
// IL
Vector128<uint> eval<uint>(BinaryArithmeticKind:byte kind, Vector128<uint> x, Vector128<uint> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<int> eval<int>(BinaryArithmeticKind:byte kind, Vector128<int> x, Vector128<int> y)
// IL
Vector128<int> eval<int>(BinaryArithmeticKind:byte kind, Vector128<int> x, Vector128<int> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector128<ulong> x, Vector128<ulong> y)
// IL
Vector128<ulong> eval<ulong>(BinaryArithmeticKind:byte kind, Vector128<ulong> x, Vector128<ulong> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<long> eval<long>(BinaryArithmeticKind:byte kind, Vector128<long> x, Vector128<long> y)
// IL
Vector128<long> eval<long>(BinaryArithmeticKind:byte kind, Vector128<long> x, Vector128<long> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
// IL
Vector128<float> eval<float>(BinaryArithmeticKind:byte kind, Vector128<float> x, Vector128<float> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664087, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.BinaryArithmeticKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<double> eval<double>(BinaryArithmeticKind:byte kind, Vector128<double> x, Vector128<double> y)
// IL
Vector128<double> eval<double>(BinaryArithmeticKind:byte kind, Vector128<double> x, Vector128<double> y)
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
    IL_000C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::add<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: ret
    IL_0012: ldarg.1
    IL_0013: ldarg.2
    IL_0014: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::sub<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0019: ret
    IL_001A: ldarg.0
    IL_001B: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryArithmeticKind)
    IL_0020: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0025: throw
}
------------------------------------------------------------------------------------------------------------------------
