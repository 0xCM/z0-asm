// Id := 100664519, Name := System.Runtime.Intrinsics.Vector128`1<System.UInt64> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<ulong> vblend(Vector128<ulong> x, Vector128<ulong> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<ulong> vblend(Vector128<ulong> x, Vector128<ulong> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> zfunc::v64u<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.UInt64> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>,System.Runtime.Intrinsics.Vector128`1<System.UInt64>)
    IL_000D: ret
}
