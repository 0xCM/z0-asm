// Id := 100663341, Name := System.Int64 Z0.Bits::bitclear(System.Int64,System.Byte,System.Byte)
// long bitclear(long src, byte index, byte count)
// AggressiveInlining
long bitclear(long src, byte index, byte count)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt64 Z0.Bits::bitclear(System.UInt64,System.Byte,System.Byte)
    IL_0008: ret
}
