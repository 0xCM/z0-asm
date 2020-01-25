// Id := 100665503, Name := System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.SByte>&)
// ref Vector128<sbyte> vgeneric<sbyte>(in Vector128<sbyte> src)
// AggressiveInlining
ref Vector128<sbyte> vgeneric<sbyte>(in Vector128<sbyte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.SByte>& zfunc::mutable<System.Runtime.Intrinsics.Vector128`1<System.SByte>>(System.Runtime.Intrinsics.Vector128`1<System.SByte>&)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<T>& System.Runtime.CompilerServices.Unsafe::As<System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<T>>(System.Runtime.Intrinsics.Vector128`1<System.SByte>&)
    IL_000B: ret
}
