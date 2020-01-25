// Id := 100663357, Name := System.UInt16 Z0.Bits::broadcast(System.Byte,Z0.N16)
// ushort broadcast(byte src, N16 w)
// AggressiveInlining
ushort broadcast(byte src, N16 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.Byte> Z0.Bits::vbroadcast(System.Byte)
    IL_0006: call System.UInt16 zfunc::vfirst<System.Byte,System.UInt16>(System.Runtime.Intrinsics.Vector128`1<System.Byte>)
    IL_000B: ret
}
