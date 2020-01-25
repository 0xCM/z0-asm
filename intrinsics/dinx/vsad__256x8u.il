// Id := 100663591, Name := System.Runtime.Intrinsics.Vector256`1<System.UInt16> Z0.dinx::vsad(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
// Vector256<ushort> vsad(Vector256<byte> lhs, Vector256<byte> rhs)
// AggressiveInlining
Vector256<ushort> vsad(Vector256<byte> lhs, Vector256<byte> rhs)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: call System.Runtime.Intrinsics.Vector256`1<System.UInt16> System.Runtime.Intrinsics.X86.Avx2::SumAbsoluteDifferences(System.Runtime.Intrinsics.Vector256`1<System.Byte>,System.Runtime.Intrinsics.Vector256`1<System.Byte>)
    IL_0007: ret
}
