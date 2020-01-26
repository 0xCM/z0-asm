// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
// Id := 100664048, Name := Z0.BinaryOp`1<T> Z0.Logix.ScalarOpApi::lookup<T>(Z0.ComparisonKind)
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
