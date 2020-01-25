// Id := 100664513, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vblend(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.Byte>)
// Vector128<sbyte> vblend(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<byte> spec)
// AggressiveInlining
Vector128<sbyte> vblend(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<byte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> zfunc::v8i<System.Byte>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000D: ret
}
