// Id := 100664141, Name := Z0.BitMatrix`1<T> Z0.Logix.BitMatrixOps::select<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<int> select<int>(in BitMatrix<int> A, in BitMatrix<int> B, in BitMatrix<int> C)
// AggressiveInlining
BitMatrix<int> select<int>(in BitMatrix<int> A, in BitMatrix<int> B, in BitMatrix<int> C)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.BitMatrix`1<T> Z0.BitMatrix::select<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0008: ret
}
