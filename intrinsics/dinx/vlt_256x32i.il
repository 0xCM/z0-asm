// Id := 100664596, Name := System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.dinx::vlt(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
// Vector256<int> vlt(Vector256<int> x, Vector256<int> y)
// AggressiveInlining
Vector256<int> vlt(Vector256<int> x, Vector256<int> y)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.Int32> Z0.X86Missing::CompareLessThan(System.Runtime.Intrinsics.Vector256`1<System.Int32>,System.Runtime.Intrinsics.Vector256`1<System.Int32>)
    IL_0007: ret
}
