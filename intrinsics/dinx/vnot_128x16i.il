// Id := 100664133, Name := System.Runtime.Intrinsics.Vector128`1<System.Int16> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Int16>)
// Vector128<Int16> vnot(Vector128<Int16> x)
// AggressiveInlining
Vector128<Int16> vnot(Vector128<Int16> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::CompareEqual(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int16> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Int16>,System.Runtime.Intrinsics.Vector128`1<System.Int16>)
    IL_000D: ret
}
