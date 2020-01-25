// Id := 100664142, Name := Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::select<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<long> select<long>(in BitMatrix<long> A, in BitMatrix<long> B, in BitMatrix<long> C, ref BitMatrix<long> Z)
// AggressiveInlining
ref BitMatrix<long> select<long>(in BitMatrix<long> A, in BitMatrix<long> B, in BitMatrix<long> C, ref BitMatrix<long> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: ldarg.3
    IL_0004: call Z0.BitMatrix`1<T>& Z0.BitMatrix::select<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0009: ret
}
