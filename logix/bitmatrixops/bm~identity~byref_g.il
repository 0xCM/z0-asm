// Id := 100664106, Name := Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<long> identity<long>(in BitMatrix<long> A, ref BitMatrix<long> Z)
// AggressiveInlining
ref BitMatrix<long> identity<long>(in BitMatrix<long> A, ref BitMatrix<long> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call Z0.BitMatrix`1<T>& Z0.BitMatrix::identity<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0007: ret
}
