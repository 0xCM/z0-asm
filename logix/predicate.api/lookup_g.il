// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
// IL
BinaryPred<byte> lookup<byte>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
// IL
BinaryPred<sbyte> lookup<sbyte>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
// IL
BinaryPred<ushort> lookup<ushort>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<short> lookup<short>(ComparisonKind:byte kind)
// IL
BinaryPred<short> lookup<short>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
// IL
BinaryPred<uint> lookup<uint>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
// IL
BinaryPred<int> lookup<int>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<ulong> lookup<ulong>(ComparisonKind:byte kind)
// IL
BinaryPred<ulong> lookup<ulong>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
// Z0.Logix.BinaryPred`1<T> Z0.Logix.PredicateApi::lookup<T>(Z0.ComparisonKind)
// BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
// IL
BinaryPred<long> lookup<long>(ComparisonKind:byte kind)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_003C,IL_0049,IL_0056,IL_0063,IL_002F)
    IL_0020: br.s IL_0070
    IL_0022: ldnull
    IL_0023: ldftn Z0.bit Z0.gmath::eq<T>(T,T)
    IL_0029: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_002E: ret
    IL_002F: ldnull
    IL_0030: ldftn Z0.bit Z0.gmath::neq<T>(T,T)
    IL_0036: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_003B: ret
    IL_003C: ldnull
    IL_003D: ldftn Z0.bit Z0.gmath::lt<T>(T,T)
    IL_0043: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0048: ret
    IL_0049: ldnull
    IL_004A: ldftn Z0.bit Z0.gmath::lteq<T>(T,T)
    IL_0050: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0055: ret
    IL_0056: ldnull
    IL_0057: ldftn Z0.bit Z0.gmath::gt<T>(T,T)
    IL_005D: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_0062: ret
    IL_0063: ldnull
    IL_0064: ldftn Z0.bit Z0.gmath::gteq<T>(T,T)
    IL_006A: newobj System.Void Z0.Logix.BinaryPred`1<T>::.ctor(System.Object,System.IntPtr)
    IL_006F: ret
    IL_0070: ldarg.0
    IL_0071: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0076: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_007B: throw
}
------------------------------------------------------------------------------------------------------------------------
