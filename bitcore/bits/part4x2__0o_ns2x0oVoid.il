// Id := 100663467, Name := System.Void Z0.Bits::part4x2(System.UInt32,Z0.NatSpan`2<Z0.N2,System.Byte>)
// void part4x2(uint src, NatSpan<N2,byte> dst)
// AggressiveInlining
void part4x2(uint src, NatSpan<N2,byte> dst)
{
    IL_0000: ldarg.0
    IL_0001: ldarga.s dst
    IL_0003: call System.Byte& zfunc::head<Z0.N2,System.Byte>(Z0.NatSpan`2<Z0.N2,System.Byte>&)
    IL_0008: call System.Void Z0.Bits::part4x2(System.UInt32,System.Byte&)
    IL_000D: ret
}
