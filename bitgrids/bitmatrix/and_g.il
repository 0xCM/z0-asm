// Id := 100664433, Name := Z0.BitMatrix`1<T> Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
// AggressiveInlining
BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664433, Name := Z0.BitMatrix`1<T> Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
// AggressiveInlining
BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664433, Name := Z0.BitMatrix`1<T> Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
// AggressiveInlining
BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664433, Name := Z0.BitMatrix`1<T> Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
// AggressiveInlining
BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664434, Name := Z0.BitMatrix`1<T>& Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> dst)
// AggressiveInlining
ref BitMatrix<byte> and<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664434, Name := Z0.BitMatrix`1<T>& Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> dst)
// AggressiveInlining
ref BitMatrix<ushort> and<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> dst)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664434, Name := Z0.BitMatrix`1<T>& Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> dst)
// AggressiveInlining
ref BitMatrix<uint> and<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> dst)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664434, Name := Z0.BitMatrix`1<T>& Z0.BitMatrix::and<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> dst)
// AggressiveInlining
ref BitMatrix<ulong> and<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> dst)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::and<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
