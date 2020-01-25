// Id := 100663362, Name := System.UInt64 Z0.Bits::broadcast(System.UInt32,Z0.N64)
// ulong broadcast(uint src, N64 w)
// AggressiveInlining
ulong broadcast(uint src, N64 w)
{
    IL_0000: ldarg.0
    IL_0001: call System.Runtime.Intrinsics.Vector128`1<System.UInt32> Z0.Bits::vbroadcast(System.UInt32)
    IL_0006: call System.UInt64 zfunc::vfirst<System.UInt32,System.UInt64>(System.Runtime.Intrinsics.Vector128`1<System.UInt32>)
    IL_000B: ret
}
