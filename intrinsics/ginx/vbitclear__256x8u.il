// Id := 100665592, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vbitclear<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte,System.Byte)
// Vector256<byte> vbitclear<byte>(Vector256<byte> src, byte start, byte count)
// AggressiveInlining
Vector256<byte> vbitclear<byte>(Vector256<byte> src, byte start, byte count)
{
    IL_0000: call Z0.N256 zfunc::get_n256()
    IL_0005: stloc.0
    IL_0006: ldarg.1
    IL_0007: ldarg.2
    IL_0008: call T Z0.BitMask::eraser<T>(System.Byte,System.Byte)
    IL_000D: stloc.1
    IL_000E: ldloc.0
    IL_000F: ldloc.1
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.CpuVector::vbroadcast<T>(Z0.N256,T)
    IL_0015: stloc.2
    IL_0016: ldloc.2
    IL_0017: ldarg.0
    IL_0018: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vand<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Runtime.Intrinsics.Vector256`1<T>)
    IL_001D: ret
}
