// Id := 100665265, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vputcell<T>(T,System.Int32,System.Runtime.Intrinsics.Vector128`1<T>)
// Vector128<ushort> vputcell<ushort>(ushort src, int index, Vector128<ushort> dst)
// AggressiveInlining
Vector128<ushort> vputcell<ushort>(ushort src, int index, Vector128<ushort> dst)
{
    IL_0000: ldarg.2
    IL_0001: ldarg.1
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<T> System.Runtime.Intrinsics.Vector128::WithElement<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Int32,T)
    IL_0008: ret
}
