// Id := 100664533, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vblendv(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vblendv(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<sbyte> spec)
// AggressiveInlining
Vector128<sbyte> vblendv(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<sbyte> spec)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse41::BlendVariable(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0008: ret
}
