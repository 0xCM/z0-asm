// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
// IL
Shifter<byte> lookup<byte>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<sbyte> lookup<sbyte>(ShiftOpKind:byte kind)
// IL
Shifter<sbyte> lookup<sbyte>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<ushort> lookup<ushort>(ShiftOpKind:byte kind)
// IL
Shifter<ushort> lookup<ushort>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<short> lookup<short>(ShiftOpKind:byte kind)
// IL
Shifter<short> lookup<short>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<uint> lookup<uint>(ShiftOpKind:byte kind)
// IL
Shifter<uint> lookup<uint>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<int> lookup<int>(ShiftOpKind:byte kind)
// IL
Shifter<int> lookup<int>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<ulong> lookup<ulong>(ShiftOpKind:byte kind)
// IL
Shifter<ulong> lookup<ulong>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
// Shifter<long> lookup<long>(ShiftOpKind:byte kind)
// IL
Shifter<long> lookup<long>(ShiftOpKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.0
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn T Z0.Logix.ScalarOps::sll<T>(T,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn T Z0.Logix.ScalarOps::srl<T>(T,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn T Z0.Logix.ScalarOps::rotl<T>(T,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn T Z0.Logix.ScalarOps::rotr<T>(T,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
// IL
BinaryOp<byte> lookup<byte>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
// IL
BinaryOp<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<ushort> lookup<ushort>(ComparisonKind:byte kind)
// IL
BinaryOp<ushort> lookup<ushort>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<short> lookup<short>(ComparisonKind:byte kind)
// IL
BinaryOp<short> lookup<short>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
// IL
BinaryOp<uint> lookup<uint>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<int> lookup<int>(ComparisonKind:byte kind)
// IL
BinaryOp<int> lookup<int>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
// IL
BinaryOp<ulong> lookup<ulong>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
// IL
BinaryOp<long> lookup<long>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<float> lookup<float>(ComparisonKind:byte kind)
// IL
BinaryOp<float> lookup<float>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
// BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
// IL
BinaryOp<double> lookup<double>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<byte> lookup<byte>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<sbyte> lookup<sbyte>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<sbyte> lookup<sbyte>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<ushort> lookup<ushort>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<ushort> lookup<ushort>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<short> lookup<short>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<short> lookup<short>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<uint> lookup<uint>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<uint> lookup<uint>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<int> lookup<int>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<int> lookup<int>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<ulong> lookup<ulong>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<ulong> lookup<ulong>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.UnaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.UnaryBitLogicKind)
// UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
// IL
UnaryOp<long> lookup<long>(UnaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: beq.s IL_000A
    IL_0004: ldarg.0
    IL_0005: ldc.i4.2
    IL_0006: beq.s IL_0017
    IL_0008: br.s IL_0024
    IL_000A: ldnull
    IL_000B: ldftn T Z0.Logix.ScalarOps::not<T>(T)
    IL_0011: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0016: ret
    IL_0017: ldnull
    IL_0018: ldftn T Z0.Logix.ScalarOps::identity<T>(T)
    IL_001E: newobj System.Void Z0.UnaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0023: ret
    IL_0024: ldarg.0
    IL_0025: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.UnaryBitLogicKind)
    IL_002A: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_002F: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<byte> lookup<byte>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<sbyte> lookup<sbyte>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<ushort> lookup<ushort>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<short> lookup<short>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<uint> lookup<uint>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<int> lookup<int>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<ulong> lookup<ulong>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.BinaryBitLogicKind)
// BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
// IL
BinaryOp<long> lookup<long>(BinaryBitLogicKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0058,IL_0065,IL_010E,IL_00B3,IL_00F4,IL_00C0,IL_0099,IL_007F,IL_008C,IL_00A6,IL_00DA,IL_00E7,IL_00CD,IL_0101,IL_0072,IL_004B)
    IL_0046: br IL_011B
    IL_004B: ldnull
    IL_004C: ldftn T Z0.Logix.ScalarOps::true<T>(T,T)
    IL_0052: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0057: ret
    IL_0058: ldnull
    IL_0059: ldftn T Z0.Logix.ScalarOps::false<T>(T,T)
    IL_005F: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0064: ret
    IL_0065: ldnull
    IL_0066: ldftn T Z0.Logix.ScalarOps::and<T>(T,T)
    IL_006C: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0071: ret
    IL_0072: ldnull
    IL_0073: ldftn T Z0.Logix.ScalarOps::nand<T>(T,T)
    IL_0079: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_007E: ret
    IL_007F: ldnull
    IL_0080: ldftn T Z0.Logix.ScalarOps::or<T>(T,T)
    IL_0086: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_008B: ret
    IL_008C: ldnull
    IL_008D: ldftn T Z0.Logix.ScalarOps::nor<T>(T,T)
    IL_0093: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0098: ret
    IL_0099: ldnull
    IL_009A: ldftn T Z0.Logix.ScalarOps::xor<T>(T,T)
    IL_00A0: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00A5: ret
    IL_00A6: ldnull
    IL_00A7: ldftn T Z0.Logix.ScalarOps::xnor<T>(T,T)
    IL_00AD: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00B2: ret
    IL_00B3: ldnull
    IL_00B4: ldftn T Z0.Logix.ScalarOps::left<T>(T,T)
    IL_00BA: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00BF: ret
    IL_00C0: ldnull
    IL_00C1: ldftn T Z0.Logix.ScalarOps::right<T>(T,T)
    IL_00C7: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00CC: ret
    IL_00CD: ldnull
    IL_00CE: ldftn T Z0.Logix.ScalarOps::lnot<T>(T,T)
    IL_00D4: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00D9: ret
    IL_00DA: ldnull
    IL_00DB: ldftn T Z0.Logix.ScalarOps::rnot<T>(T,T)
    IL_00E1: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00E6: ret
    IL_00E7: ldnull
    IL_00E8: ldftn T Z0.Logix.ScalarOps::impl<T>(T,T)
    IL_00EE: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_00F3: ret
    IL_00F4: ldnull
    IL_00F5: ldftn T Z0.Logix.ScalarOps::nonimpl<T>(T,T)
    IL_00FB: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0100: ret
    IL_0101: ldnull
    IL_0102: ldftn T Z0.Logix.ScalarOps::cimpl<T>(T,T)
    IL_0108: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_010D: ret
    IL_010E: ldnull
    IL_010F: ldftn T Z0.Logix.ScalarOps::cnonimpl<T>(T,T)
    IL_0115: newobj System.Void Z0.BinaryOp`1<T>::.ctor(System.Object,System.IntPtr)
    IL_011A: ret
    IL_011B: ldarg.0
    IL_011C: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_0121: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_0126: throw
}
------------------------------------------------------------------------------------------------------------------------
