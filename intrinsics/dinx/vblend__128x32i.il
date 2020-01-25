// Id := 100664516, Name := System.Runtime.Intrinsics.Vector128`1<System.Int32> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<int> vblend(Vector128<int> x, Vector128<int> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<int> vblend(Vector128<int> x, Vector128<int> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.Int32> zfunc::v32i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.Int32> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>,System.Runtime.Intrinsics.Vector128`1<System.Int32>)
    IL_000D: ret
}
