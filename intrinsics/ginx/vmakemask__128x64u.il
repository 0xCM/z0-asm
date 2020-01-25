// Id := 100665175, Name := System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vmakemask<T>(System.UInt16,System.Byte)
// Vector128<ulong> vmakemask<ulong>(ushort src, byte index)
// AggressiveInlining
Vector128<ulong> vmakemask<ulong>(ushort src, byte index)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmakemask(System.UInt16,System.Byte)
    IL_0007: call System.Runtime.Intrinsics.Vector128`1<System.Byte> zfunc::v8u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000C: stloc.0
    IL_000D: ldloca.s V_0
    IL_000F: call System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
    IL_0014: ldobj System.Runtime.Intrinsics.Vector128`1<T>
    IL_0019: ret
}
