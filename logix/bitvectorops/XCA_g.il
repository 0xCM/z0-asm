// Id := 100664159, Name := Z0.BitVector`1<T> Z0.Logix.BitVectorOps::select<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>,Z0.BitVector`1<T>)
// BitVector<long> select<long>(BitVector<long> x, BitVector<long> y, BitVector<long> z)
// AggressiveInlining
BitVector<long> select<long>(BitVector<long> x, BitVector<long> y, BitVector<long> z)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call Z0.BitVector`1<T> Z0.BitVector::select<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0008: ret
}
