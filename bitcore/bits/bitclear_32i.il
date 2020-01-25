// Id := 100663339, Name := System.Int32 Z0.Bits::bitclear(System.Int32,System.Byte,System.Byte)
// int bitclear(int src, byte index, byte count)
// AggressiveInlining
int bitclear(int src, byte index, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.Bits::bitclear(System.UInt32,System.Byte,System.Byte)
    IL_0008: ret
}
