// Id := 100663360, Name := System.UInt32 Z0.Bits::broadcast(System.UInt16,Z0.N32)
// uint broadcast(ushort src, N32 w)
// AggressiveInlining
uint broadcast(ushort src, N32 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt16> Z0.Bits::vbroadcast(System.UInt16)
    IL_0006: call System.UInt32 zfunc::vfirst<System.UInt16,System.UInt32>(System.Runtime.Intrinsics.Vector128`1<System.UInt16>)
    IL_000B: ret
}
