// Id := 100664084, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOpApi::eval<T>(Z0.TernaryBitLogicKind,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<Int16> eval<Int16>(TernaryBitLogicKind:byte kind, Vector256<Int16> x, Vector256<Int16> y, Vector256<Int16> z)
// IL
Vector256<Int16> eval<Int16>(TernaryBitLogicKind:byte kind, Vector256<Int16> x, Vector256<Int16> y, Vector256<Int16> z)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: ldarg.0
    IL_0006: call Z0.TernaryOp`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.TernaryBitLogicKind)
    IL_000B: ldarg.1
    IL_000C: ldarg.2
    IL_000D: ldarg.3
    IL_000E: callvirt System.Runtime.Intrinsics.Vector256`1<T> Z0.TernaryOp`1<System.Runtime.Intrinsics.Vector256`1<T>>::Invoke(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0013: ret
}
