// Id := 100663744, Name := System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vmerge(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector256<byte> vmerge(Vector128<byte> x, Vector128<byte> y)
// AggressiveInlining
Vector256<byte> vmerge(Vector128<byte> x, Vector128<byte> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmergelo(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0007: ldarg.0
    IL_0008: ldarg.1
    IL_0009: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vmergehi(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000E: call System.Runtime.Intrinsics.Vector256`1<System.Byte> Z0.dinx::vconcat(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0013: ret
}
