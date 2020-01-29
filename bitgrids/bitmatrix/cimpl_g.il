// Z0.BitMatrix`1<T> Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
// AggressiveInlining
BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix`1<T> Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
// AggressiveInlining
BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix`1<T> Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
// AggressiveInlining
BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix`1<T> Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
// AggressiveInlining
BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B)
{
    IL_0000: call Z0.BitMatrix`1<T> Z0.BitMatrix::alloc<T>()
    IL_0005: stloc.0
    IL_0006: ldarg.0
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.1
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: ldloca.s V_0
    IL_0014: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0019: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_001E: ldloc.0
    IL_001F: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix`1<T>& Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z)
// AggressiveInlining
ref BitMatrix<byte> cimpl<byte>(in BitMatrix<byte> A, in BitMatrix<byte> B, ref BitMatrix<byte> Z)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix`1<T>& Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
// AggressiveInlining
ref BitMatrix<ushort> cimpl<ushort>(in BitMatrix<ushort> A, in BitMatrix<ushort> B, ref BitMatrix<ushort> Z)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix`1<T>& Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z)
// AggressiveInlining
ref BitMatrix<uint> cimpl<uint>(in BitMatrix<uint> A, in BitMatrix<uint> B, ref BitMatrix<uint> Z)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BitMatrix`1<T>& Z0.BitMatrix::cimpl<T>(Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&,Z0.BitMatrix`1<T>&)
// ref BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
// AggressiveInlining
ref BitMatrix<ulong> cimpl<ulong>(in BitMatrix<ulong> A, in BitMatrix<ulong> B, ref BitMatrix<ulong> Z)
{
    IL_0000: ldarg.0
    IL_0001: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0006: ldarg.1
    IL_0007: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_000C: ldarg.2
    IL_000D: call T& Z0.BitMatrix`1<T>::get_Head()
    IL_0012: call System.Void Z0.BitSquare::cimpl<T>(T&,T&,T&)
    IL_0017: ldarg.2
    IL_0018: ret
}
------------------------------------------------------------------------------------------------------------------------
