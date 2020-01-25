// Id := 100664089, Name := Z0.UnaryOp`1<System.Runtime.Intrinsics.Vector128`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N128,Z0.UnaryBitLogicKind)
// UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
// IL
UnaryOp<Vector128<long>> lookup<long>(N128 w, UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.1
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::not<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0011: newobj System.Void Z0.UnaryOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::identity<T>(System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001E: newobj System.Void Z0.UnaryOp`1<System.Runtime.Intrinsics.Vector128`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.1
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
