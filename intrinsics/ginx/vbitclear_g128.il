// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<byte> vbitclear<byte>(Vector128<byte> src, byte start, byte count)
// AggressiveInlining
Vector128<byte> vbitclear<byte>(Vector128<byte> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<sbyte> vbitclear<sbyte>(Vector128<sbyte> src, byte start, byte count)
// AggressiveInlining
Vector128<sbyte> vbitclear<sbyte>(Vector128<sbyte> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<ushort> vbitclear<ushort>(Vector128<ushort> src, byte start, byte count)
// AggressiveInlining
Vector128<ushort> vbitclear<ushort>(Vector128<ushort> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<Int16> vbitclear<Int16>(Vector128<Int16> src, byte start, byte count)
// AggressiveInlining
Vector128<Int16> vbitclear<Int16>(Vector128<Int16> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<uint> vbitclear<uint>(Vector128<uint> src, byte start, byte count)
// AggressiveInlining
Vector128<uint> vbitclear<uint>(Vector128<uint> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<int> vbitclear<int>(Vector128<int> src, byte start, byte count)
// AggressiveInlining
Vector128<int> vbitclear<int>(Vector128<int> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<ulong> vbitclear<ulong>(Vector128<ulong> src, byte start, byte count)
// AggressiveInlining
Vector128<ulong> vbitclear<ulong>(Vector128<ulong> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100665591, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Byte,System.Byte)
// Vector128<long> vbitclear<long>(Vector128<long> src, byte start, byte count)
// AggressiveInlining
Vector128<long> vbitclear<long>(Vector128<long> src, byte start, byte count)
{
    IL_0000: call Z0.N128 zfunc::get_n128()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector128`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N128,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector128`1<T>)
    IL_001D: ret
}
------------------------------------------------------------------------------------------------------------------------
