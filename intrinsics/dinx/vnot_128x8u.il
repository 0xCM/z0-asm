// Id := 100664132, Name := System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<byte> vnot(Vector128<byte> x)
// AggressiveInlining
Vector128<byte> vnot(Vector128<byte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::CompareEqual(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Byte> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.Byte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000D: ret
}
