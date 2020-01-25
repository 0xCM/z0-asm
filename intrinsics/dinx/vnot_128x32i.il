// Id := 100664135, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int32>)
// Vector128<int> vnot(Vector128<int> x)
// AggressiveInlining
Vector128<int> vnot(Vector128<int> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::CompareEqual(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000D: ret
}
