// Id := 100664139, Name := System.Runtime.Intrinsics.Vector256`1<System.SByte> Z0.dinx::vnot(System.Runtime.Intrinsics.Vector256`1<System.SByte>)
// Vector256<sbyte> vnot(Vector256<sbyte> x)
// AggressiveInlining
Vector256<sbyte> vnot(Vector256<sbyte> x)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.0
    IL_0002: ldarg.0
    IL_0003: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::CompareEqual(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_0008: call System.Runtime.Intrinsics.Vector256`1<System.SByte> System.Runtime.Intrinsics.X86.Avx2::Xor(System.Runtime.Intrinsics.Vector256`1<System.SByte>,System.Runtime.Intrinsics.Vector256`1<System.SByte>)
    IL_000D: ret
}
