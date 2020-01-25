// Id := 100663656, Name := System.UInt32 Z0.gbits::pop<T>(T,T,T,T,T,T,T,T)
// uint pop<Int16>(Int16 x0, Int16 x1, Int16 x2, Int16 x3, Int16 x4, Int16 x5, Int16 x6, Int16 x7)
// AggressiveInlining
uint pop<Int16>(Int16 x0, Int16 x1, Int16 x2, Int16 x3, Int16 x4, Int16 x5, Int16 x6, Int16 x7)
{
    IL_0000: ldarg.0
    IL_0001: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0006: ldarg.1
    IL_0007: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_000C: ldarg.2
    IL_000D: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0012: ldarg.3
    IL_0013: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0018: ldarg.s x4
    IL_001A: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_001F: ldarg.s x5
    IL_0021: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0026: ldarg.s x6
    IL_0028: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_002D: ldarg.s x7
    IL_002F: call System.UInt64 zfunc::convert<T,System.UInt64>(T)
    IL_0034: call System.UInt32 Z0.Bits::pop(System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64,System.UInt64)
    IL_0039: ret
}
