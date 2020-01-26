// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<byte>> lookup<byte>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<sbyte>> lookup<sbyte>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<ushort>> lookup<ushort>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<Int16>> lookup<Int16>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<Int16>> lookup<Int16>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<uint>> lookup<uint>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<int>> lookup<int>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<ulong>> lookup<ulong>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664094, Name := Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>> Z0.Logix.VectorizedOpApi::lookup<T>(Z0.N256,Z0.ShiftOpKind)
// Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
// IL
Shifter<Vector256<long>> lookup<long>(N256 w, ShiftOpKind:byte kind)
{
    IL_0000: ldarg.1
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_001E,IL_002B,IL_0052,IL_0038)
    IL_0018: ldarg.1
    IL_0019: ldc.i4.8
    IL_001A: beq.s IL_0045
    IL_001C: br.s IL_0052
    IL_001E: ldnull
    IL_001F: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::sll<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0025: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_002A: ret
    IL_002B: ldnull
    IL_002C: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::srl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_0032: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0037: ret
    IL_0038: ldnull
    IL_0039: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotl<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_003F: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0044: ret
    IL_0045: ldnull
    IL_0046: ldftn System.Runtime.Intrinsics.Vector256`1<T> Z0.Logix.VectorizedOps::rotr<T>(System.Runtime.Intrinsics.Vector256`1<T>,System.Byte)
    IL_004C: newobj System.Void Z0.Logix.Shifter`1<System.Runtime.Intrinsics.Vector256`1<T>>::.ctor(System.Object,System.IntPtr)
    IL_0051: ret
    IL_0052: ldarg.1
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ShiftOpKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
