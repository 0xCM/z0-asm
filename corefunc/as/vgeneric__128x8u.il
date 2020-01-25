// Id := 100665504, Name := System.Runtime.Intrinsics.Vector128`1<T>& Z0.As::vgeneric<T>(System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
// ref Vector128<double> vgeneric<double>(in Vector128<byte> src)
// AggressiveInlining
ref Vector128<double> vgeneric<double>(in Vector128<byte> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte>& zfunc::mutable<System.Runtime.Intrinsics.Vector128`1<System.Byte>>(System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
    IL_0006: call System.Runtime.Intrinsics.Vector128`1<T>& System.Runtime.CompilerServices.Unsafe::As<System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<T>>(System.Runtime.Intrinsics.Vector128`1<System.Byte>&)
    IL_000B: ret
}
