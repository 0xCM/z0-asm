// Id := 100664131, Name := System.Runtime.Intrinsics.Vector128`1<System.SByte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector128`1<System.SByte>)
// Vector128<sbyte> vnot(Vector128<sbyte> x)
// AggressiveInlining
Vector128<sbyte> vnot(Vector128<sbyte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse2::CompareEqual(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_0008: call System.Runtime.Intrinsics.Vector128`1<System.SByte> System.Runtime.Intrinsics.X86.Sse2::Xor(System.Runtime.Intrinsics.Vector128`1<System.SByte>,System.Runtime.Intrinsics.Vector128`1<System.SByte>)
    IL_000D: ret
}
