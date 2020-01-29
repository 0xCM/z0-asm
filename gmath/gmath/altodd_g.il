// T Z0.gmath::altodd<T>()
// byte altodd<byte>()
// AggressiveInlining
byte altodd<byte>()
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002B
    IL_001B: ldc.i4.s 85
    IL_001D: stloc.0
    IL_001E: ldloca.s V_0
    IL_0020: call T& Z0.AsIn::generic<T>(System.Byte&)
    IL_0025: ldobj T
    IL_002A: ret
    IL_002B: ldtoken T
    IL_0030: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0035: ldtoken System.UInt16
    IL_003A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0044: brfalse.s IL_0059
    IL_0046: ldc.i4 21845
    IL_004B: stloc.1
    IL_004C: ldloca.s V_1
    IL_004E: call T& Z0.AsIn::generic<T>(System.UInt16&)
    IL_0053: ldobj T
    IL_0058: ret
    IL_0059: ldtoken T
    IL_005E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0063: ldtoken System.UInt32
    IL_0068: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006D: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0072: brfalse.s IL_0087
    IL_0074: ldc.i4 1431655765
    IL_0079: stloc.2
    IL_007A: ldloca.s V_2
    IL_007C: call T& Z0.AsIn::generic<T>(System.UInt32&)
    IL_0081: ldobj T
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B9
    IL_00A2: ldc.i8 6148914691236517205
    IL_00AB: stloc.3
    IL_00AC: ldloca.s V_3
    IL_00AE: call T& Z0.AsIn::generic<T>(System.UInt64&)
    IL_00B3: ldobj T
    IL_00B8: ret
    IL_00B9: ldstr "altodd"
    IL_00BE: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\generic\\arithmetic\\const.g.cs"
    IL_00C3: ldc.i4.s 78
    IL_00C5: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00CA: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CF: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gmath::altodd<T>()
// ushort altodd<ushort>()
// AggressiveInlining
ushort altodd<ushort>()
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002B
    IL_001B: ldc.i4.s 85
    IL_001D: stloc.0
    IL_001E: ldloca.s V_0
    IL_0020: call T& Z0.AsIn::generic<T>(System.Byte&)
    IL_0025: ldobj T
    IL_002A: ret
    IL_002B: ldtoken T
    IL_0030: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0035: ldtoken System.UInt16
    IL_003A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0044: brfalse.s IL_0059
    IL_0046: ldc.i4 21845
    IL_004B: stloc.1
    IL_004C: ldloca.s V_1
    IL_004E: call T& Z0.AsIn::generic<T>(System.UInt16&)
    IL_0053: ldobj T
    IL_0058: ret
    IL_0059: ldtoken T
    IL_005E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0063: ldtoken System.UInt32
    IL_0068: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006D: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0072: brfalse.s IL_0087
    IL_0074: ldc.i4 1431655765
    IL_0079: stloc.2
    IL_007A: ldloca.s V_2
    IL_007C: call T& Z0.AsIn::generic<T>(System.UInt32&)
    IL_0081: ldobj T
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B9
    IL_00A2: ldc.i8 6148914691236517205
    IL_00AB: stloc.3
    IL_00AC: ldloca.s V_3
    IL_00AE: call T& Z0.AsIn::generic<T>(System.UInt64&)
    IL_00B3: ldobj T
    IL_00B8: ret
    IL_00B9: ldstr "altodd"
    IL_00BE: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\generic\\arithmetic\\const.g.cs"
    IL_00C3: ldc.i4.s 78
    IL_00C5: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00CA: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CF: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gmath::altodd<T>()
// uint altodd<uint>()
// AggressiveInlining
uint altodd<uint>()
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002B
    IL_001B: ldc.i4.s 85
    IL_001D: stloc.0
    IL_001E: ldloca.s V_0
    IL_0020: call T& Z0.AsIn::generic<T>(System.Byte&)
    IL_0025: ldobj T
    IL_002A: ret
    IL_002B: ldtoken T
    IL_0030: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0035: ldtoken System.UInt16
    IL_003A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0044: brfalse.s IL_0059
    IL_0046: ldc.i4 21845
    IL_004B: stloc.1
    IL_004C: ldloca.s V_1
    IL_004E: call T& Z0.AsIn::generic<T>(System.UInt16&)
    IL_0053: ldobj T
    IL_0058: ret
    IL_0059: ldtoken T
    IL_005E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0063: ldtoken System.UInt32
    IL_0068: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006D: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0072: brfalse.s IL_0087
    IL_0074: ldc.i4 1431655765
    IL_0079: stloc.2
    IL_007A: ldloca.s V_2
    IL_007C: call T& Z0.AsIn::generic<T>(System.UInt32&)
    IL_0081: ldobj T
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B9
    IL_00A2: ldc.i8 6148914691236517205
    IL_00AB: stloc.3
    IL_00AC: ldloca.s V_3
    IL_00AE: call T& Z0.AsIn::generic<T>(System.UInt64&)
    IL_00B3: ldobj T
    IL_00B8: ret
    IL_00B9: ldstr "altodd"
    IL_00BE: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\generic\\arithmetic\\const.g.cs"
    IL_00C3: ldc.i4.s 78
    IL_00C5: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00CA: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CF: throw
}
------------------------------------------------------------------------------------------------------------------------
// T Z0.gmath::altodd<T>()
// ulong altodd<ulong>()
// AggressiveInlining
ulong altodd<ulong>()
{
    IL_0000: ldtoken T
    IL_0005: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_000A: ldtoken System.Byte
    IL_000F: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0014: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0019: brfalse.s IL_002B
    IL_001B: ldc.i4.s 85
    IL_001D: stloc.0
    IL_001E: ldloca.s V_0
    IL_0020: call T& Z0.AsIn::generic<T>(System.Byte&)
    IL_0025: ldobj T
    IL_002A: ret
    IL_002B: ldtoken T
    IL_0030: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0035: ldtoken System.UInt16
    IL_003A: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_003F: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0044: brfalse.s IL_0059
    IL_0046: ldc.i4 21845
    IL_004B: stloc.1
    IL_004C: ldloca.s V_1
    IL_004E: call T& Z0.AsIn::generic<T>(System.UInt16&)
    IL_0053: ldobj T
    IL_0058: ret
    IL_0059: ldtoken T
    IL_005E: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0063: ldtoken System.UInt32
    IL_0068: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_006D: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_0072: brfalse.s IL_0087
    IL_0074: ldc.i4 1431655765
    IL_0079: stloc.2
    IL_007A: ldloca.s V_2
    IL_007C: call T& Z0.AsIn::generic<T>(System.UInt32&)
    IL_0081: ldobj T
    IL_0086: ret
    IL_0087: ldtoken T
    IL_008C: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_0091: ldtoken System.UInt64
    IL_0096: call System.Type System.Type::GetTypeFromHandle(System.RuntimeTypeHandle)
    IL_009B: call System.Boolean System.Type::op_Equality(System.Type,System.Type)
    IL_00A0: brfalse.s IL_00B9
    IL_00A2: ldc.i8 6148914691236517205
    IL_00AB: stloc.3
    IL_00AC: ldloca.s V_3
    IL_00AE: call T& Z0.AsIn::generic<T>(System.UInt64&)
    IL_00B3: ldobj T
    IL_00B8: ret
    IL_00B9: ldstr "altodd"
    IL_00BE: ldstr "J:\\dev\\projects\\z0\\gmath\\src\\core\\generic\\arithmetic\\const.g.cs"
    IL_00C3: ldc.i4.s 78
    IL_00C5: newobj System.Void System.Nullable`1<System.Int32>::.ctor(System.Int32)
    IL_00CA: call Z0.AppException zfunc::unsupported<T>(System.String,System.String,System.Nullable`1<System.Int32>)
    IL_00CF: throw
}
------------------------------------------------------------------------------------------------------------------------
