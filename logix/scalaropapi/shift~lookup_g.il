// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
// Id := 100664047, Name := Z0.Logix.Shifter`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ShiftOpKind)
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
