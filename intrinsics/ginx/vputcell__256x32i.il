// Id := 100665266, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vputcell<T>(T,System.Int32,System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<int> vputcell<int>(int src, int index, Vector256<int> dst)
// AggressiveInlining
Vector256<int> vputcell<int>(int src, int index, Vector256<int> dst)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<T> System.Runtime.Intrinsics.Vector256::WithElement<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Int32,T)
    IL_0008: ret
}
