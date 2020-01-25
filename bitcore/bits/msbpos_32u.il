// Id := 100663429, Name := System.Int32 Z0.Bits::msbpos(System.UInt32)
// int msbpos(uint src)
// AggressiveInlining
int msbpos(uint src)
{
    IL_0000: call System.Int32 zfunc::bitsize<System.UInt32>()
    IL_0005: ldc.i4.1
    IL_0006: sub
    IL_0007: ldarg.0
    IL_0008: call System.Int32 Z0.Bits::nlz(System.UInt32)
    IL_000D: sub
    IL_000E: ret
}
