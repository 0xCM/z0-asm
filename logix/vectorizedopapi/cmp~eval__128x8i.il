// Id := 100664079, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.ComparisonKind,System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
// IL
Vector128<sbyte> eval<sbyte>(ComparisonKind:byte kind, Vector128<sbyte> a, Vector128<sbyte> b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001A,IL_0022,IL_0032,IL_002A)
    IL_0018: br.s IL_0032
    IL_001A: ldarg.1
    IL_001B: ldarg.2
    IL_001C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::equals<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0021: ret
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::lt<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call System.Runtime.Intrinsics.Vector128`1<T> Z0.Logix.VectorizedOps::gt<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_0031: ret
    IL_0032: ldarg.0
    IL_0033: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0038: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_003D: throw
}
