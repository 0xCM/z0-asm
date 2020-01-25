// Id := 100664092, Name := Z0.BinaryOp`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ComparisonKind)
// BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
// IL
BinaryOp<Vector256<long>> lookup<long>(N256 w, ComparisonKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0027,IL_0041,IL_0034)
    IL_0018: br.s IL_0041
    IL_001A: ldnull
    IL_001B: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0021: newobj System.Void Z0.BinaryOp`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0026: ret
    IL_0027: ldnull
    IL_0028: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_002E: newobj System.Void Z0.BinaryOp`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0033: ret
    IL_0034: ldnull
    IL_0035: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_003B: newobj System.Void Z0.BinaryOp`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0040: ret
    IL_0041: ldarg.1
    IL_0042: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0047: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_004C: throw
}
