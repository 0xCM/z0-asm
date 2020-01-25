// Id := 100663493, Name := System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
// uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5)
// AggressiveInlining
uint pop(ulong x0, ulong x1, ulong x2, ulong x3, ulong x4, ulong x5)
{
    IL_0000: ldarg.0
    IL_0001: ldarg.1
    IL_0002: ldarg.2
    IL_0003: call System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64)
    IL_0008: ldarg.3
    IL_0009: ldarg.s x4
    IL_000B: ldarg.s x5
    IL_000D: call System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64)
    IL_0012: add
    IL_0013: ret
}
