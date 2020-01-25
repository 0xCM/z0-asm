// Id := 100663427, Name := System.Int32 Z0.Bits::msbpos(System.Byte)
// int msbpos(byte src)
// AggressiveInlining
int msbpos(byte src)
{
    IL_0000: call System.Int32 zfunc::bitsize<System.Byte>()
    IL_0005: ldc.i4.1
    IL_0006: sub
    IL_0007: ldarg.0
    IL_0008: call System.Int32 Z0.Bits::nlz(System.Byte)
    IL_000D: sub
    IL_000E: ret
}
