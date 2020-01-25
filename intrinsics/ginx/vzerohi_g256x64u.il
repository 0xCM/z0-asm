// Id := 100665272, Name := System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vzerohi<T>(System.Runtime.Intrinsics.Vector256`1<T>)
// Vector256<ulong> vzerohi<ulong>(Vector256<ulong> src)
// AggressiveInlining
Vector256<ulong> vzerohi<ulong>(Vector256<ulong> src)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<T> Z0.ginx::vlo<T>(System.Runtime.Intrinsics.Vector256`1<T>)
    IL_0006: ldloca.s V_0
    IL_0008: initobj System.Runtime.Intrinsics.Vector256`1<T>
    IL_000E: ldloc.0
    IL_000F: ldc.i4.0
    IL_0010: call System.Runtime.Intrinsics.Vector256`1<T> Z0.ginx::vinsert<T>(System.Runtime.Intrinsics.Vector128`1<T>,System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0015: ret
}
