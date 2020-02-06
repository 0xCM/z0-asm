// Z0.Block16`1<T> Z0.DataBlocks::alloc<T>(Z0.N16,System.Int32,T)
// Block16<byte> alloc<byte>(N16 w, int blocks, byte t)
// IL
Block16<byte> alloc<byte>(N16 w, int blocks, byte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N16,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block16`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block16`1<T> Z0.DataBlocks::alloc<T>(Z0.N16,System.Int32,T)
// Block16<sbyte> alloc<sbyte>(N16 w, int blocks, sbyte t)
// IL
Block16<sbyte> alloc<sbyte>(N16 w, int blocks, sbyte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N16,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block16`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block16`1<T> Z0.DataBlocks::alloc<T>(Z0.N16,System.Int32,T)
// Block16<ushort> alloc<ushort>(N16 w, int blocks, ushort t)
// IL
Block16<ushort> alloc<ushort>(N16 w, int blocks, ushort t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N16,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block16`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block16`1<T> Z0.DataBlocks::alloc<T>(Z0.N16,System.Int32,T)
// Block16<short> alloc<short>(N16 w, int blocks, short t)
// IL
Block16<short> alloc<short>(N16 w, int blocks, short t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N16,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block16`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<T> Z0.DataBlocks::alloc<T>(Z0.N32,System.Int32,T)
// Block32<byte> alloc<byte>(N32 w, int blocks, byte t)
// IL
Block32<byte> alloc<byte>(N32 w, int blocks, byte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N32,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block32`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<T> Z0.DataBlocks::alloc<T>(Z0.N32,System.Int32,T)
// Block32<sbyte> alloc<sbyte>(N32 w, int blocks, sbyte t)
// IL
Block32<sbyte> alloc<sbyte>(N32 w, int blocks, sbyte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N32,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block32`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<T> Z0.DataBlocks::alloc<T>(Z0.N32,System.Int32,T)
// Block32<ushort> alloc<ushort>(N32 w, int blocks, ushort t)
// IL
Block32<ushort> alloc<ushort>(N32 w, int blocks, ushort t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N32,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block32`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<T> Z0.DataBlocks::alloc<T>(Z0.N32,System.Int32,T)
// Block32<short> alloc<short>(N32 w, int blocks, short t)
// IL
Block32<short> alloc<short>(N32 w, int blocks, short t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N32,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block32`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<T> Z0.DataBlocks::alloc<T>(Z0.N32,System.Int32,T)
// Block32<uint> alloc<uint>(N32 w, int blocks, uint t)
// IL
Block32<uint> alloc<uint>(N32 w, int blocks, uint t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N32,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block32`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<T> Z0.DataBlocks::alloc<T>(Z0.N32,System.Int32,T)
// Block32<int> alloc<int>(N32 w, int blocks, int t)
// IL
Block32<int> alloc<int>(N32 w, int blocks, int t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N32,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block32`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block32`1<T> Z0.DataBlocks::alloc<T>(Z0.N32,System.Int32,T)
// Block32<float> alloc<float>(N32 w, int blocks, float t)
// IL
Block32<float> alloc<float>(N32 w, int blocks, float t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N32,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block32`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<byte> alloc<byte>(N64 w, int blocks, byte t)
// IL
Block64<byte> alloc<byte>(N64 w, int blocks, byte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<sbyte> alloc<sbyte>(N64 w, int blocks, sbyte t)
// IL
Block64<sbyte> alloc<sbyte>(N64 w, int blocks, sbyte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<ushort> alloc<ushort>(N64 w, int blocks, ushort t)
// IL
Block64<ushort> alloc<ushort>(N64 w, int blocks, ushort t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<short> alloc<short>(N64 w, int blocks, short t)
// IL
Block64<short> alloc<short>(N64 w, int blocks, short t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<uint> alloc<uint>(N64 w, int blocks, uint t)
// IL
Block64<uint> alloc<uint>(N64 w, int blocks, uint t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<int> alloc<int>(N64 w, int blocks, int t)
// IL
Block64<int> alloc<int>(N64 w, int blocks, int t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<ulong> alloc<ulong>(N64 w, int blocks, ulong t)
// IL
Block64<ulong> alloc<ulong>(N64 w, int blocks, ulong t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<long> alloc<long>(N64 w, int blocks, long t)
// IL
Block64<long> alloc<long>(N64 w, int blocks, long t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<float> alloc<float>(N64 w, int blocks, float t)
// IL
Block64<float> alloc<float>(N64 w, int blocks, float t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block64`1<T> Z0.DataBlocks::alloc<T>(Z0.N64,System.Int32,T)
// Block64<double> alloc<double>(N64 w, int blocks, double t)
// IL
Block64<double> alloc<double>(N64 w, int blocks, double t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N64,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block64`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<byte> alloc<byte>(N128 w, int blocks, byte t)
// IL
Block128<byte> alloc<byte>(N128 w, int blocks, byte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<sbyte> alloc<sbyte>(N128 w, int blocks, sbyte t)
// IL
Block128<sbyte> alloc<sbyte>(N128 w, int blocks, sbyte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<ushort> alloc<ushort>(N128 w, int blocks, ushort t)
// IL
Block128<ushort> alloc<ushort>(N128 w, int blocks, ushort t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<short> alloc<short>(N128 w, int blocks, short t)
// IL
Block128<short> alloc<short>(N128 w, int blocks, short t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<uint> alloc<uint>(N128 w, int blocks, uint t)
// IL
Block128<uint> alloc<uint>(N128 w, int blocks, uint t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<int> alloc<int>(N128 w, int blocks, int t)
// IL
Block128<int> alloc<int>(N128 w, int blocks, int t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<ulong> alloc<ulong>(N128 w, int blocks, ulong t)
// IL
Block128<ulong> alloc<ulong>(N128 w, int blocks, ulong t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<long> alloc<long>(N128 w, int blocks, long t)
// IL
Block128<long> alloc<long>(N128 w, int blocks, long t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<float> alloc<float>(N128 w, int blocks, float t)
// IL
Block128<float> alloc<float>(N128 w, int blocks, float t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block128`1<T> Z0.DataBlocks::alloc<T>(Z0.N128,System.Int32,T)
// Block128<double> alloc<double>(N128 w, int blocks, double t)
// IL
Block128<double> alloc<double>(N128 w, int blocks, double t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N128,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block128`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<byte> alloc<byte>(N256 w, int blocks, byte t)
// IL
Block256<byte> alloc<byte>(N256 w, int blocks, byte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<sbyte> alloc<sbyte>(N256 w, int blocks, sbyte t)
// IL
Block256<sbyte> alloc<sbyte>(N256 w, int blocks, sbyte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<ushort> alloc<ushort>(N256 w, int blocks, ushort t)
// IL
Block256<ushort> alloc<ushort>(N256 w, int blocks, ushort t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<short> alloc<short>(N256 w, int blocks, short t)
// IL
Block256<short> alloc<short>(N256 w, int blocks, short t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<uint> alloc<uint>(N256 w, int blocks, uint t)
// IL
Block256<uint> alloc<uint>(N256 w, int blocks, uint t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<int> alloc<int>(N256 w, int blocks, int t)
// IL
Block256<int> alloc<int>(N256 w, int blocks, int t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<ulong> alloc<ulong>(N256 w, int blocks, ulong t)
// IL
Block256<ulong> alloc<ulong>(N256 w, int blocks, ulong t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<long> alloc<long>(N256 w, int blocks, long t)
// IL
Block256<long> alloc<long>(N256 w, int blocks, long t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<float> alloc<float>(N256 w, int blocks, float t)
// IL
Block256<float> alloc<float>(N256 w, int blocks, float t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block256`1<T> Z0.DataBlocks::alloc<T>(Z0.N256,System.Int32,T)
// Block256<double> alloc<double>(N256 w, int blocks, double t)
// IL
Block256<double> alloc<double>(N256 w, int blocks, double t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N256,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block256`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<byte> alloc<byte>(N512 w, int blocks, byte t)
// IL
Block512<byte> alloc<byte>(N512 w, int blocks, byte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<sbyte> alloc<sbyte>(N512 w, int blocks, sbyte t)
// IL
Block512<sbyte> alloc<sbyte>(N512 w, int blocks, sbyte t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<ushort> alloc<ushort>(N512 w, int blocks, ushort t)
// IL
Block512<ushort> alloc<ushort>(N512 w, int blocks, ushort t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<short> alloc<short>(N512 w, int blocks, short t)
// IL
Block512<short> alloc<short>(N512 w, int blocks, short t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<uint> alloc<uint>(N512 w, int blocks, uint t)
// IL
Block512<uint> alloc<uint>(N512 w, int blocks, uint t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<int> alloc<int>(N512 w, int blocks, int t)
// IL
Block512<int> alloc<int>(N512 w, int blocks, int t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<ulong> alloc<ulong>(N512 w, int blocks, ulong t)
// IL
Block512<ulong> alloc<ulong>(N512 w, int blocks, ulong t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<long> alloc<long>(N512 w, int blocks, long t)
// IL
Block512<long> alloc<long>(N512 w, int blocks, long t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<float> alloc<float>(N512 w, int blocks, float t)
// IL
Block512<float> alloc<float>(N512 w, int blocks, float t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Block512`1<T> Z0.DataBlocks::alloc<T>(Z0.N512,System.Int32,T)
// Block512<double> alloc<double>(N512 w, int blocks, double t)
// IL
Block512<double> alloc<double>(N512 w, int blocks, double t)
{
    IL_0000: ldarg.1
    IL_0001: ldarg.0
    IL_0002: ldloca.s V_0
    IL_0004: initobj T
    IL_000A: ldloc.0
    IL_000B: call System.Int32 Z0.DataBlocks::blocklen<T>(Z0.N512,T)
    IL_0010: mul
    IL_0011: newarr T
    IL_0016: call System.Span`1<T> System.Span`1<T>::op_Implicit(T[])
    IL_001B: newobj System.Void Z0.Block512`1<T>::.ctor(System.Span`1<T>)
    IL_0020: ret
}
------------------------------------------------------------------------------------------------------------------------
