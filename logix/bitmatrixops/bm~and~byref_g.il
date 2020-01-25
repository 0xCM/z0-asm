// Id := 100664112, Name := Z0.BitMatrix`1<T>& Z0.Logix.BitMatrixOps::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<long> and<long>(in BitMatrix<long> A, in BitMatrix<long> B, ref BitMatrix<long> Z)
// AggressiveInlining
ref BitMatrix<long> and<long>(in BitMatrix<long> A, in BitMatrix<long> B, ref BitMatrix<long> Z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.BitMatrix`1<T>& Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
    IL_0008: ret
}
