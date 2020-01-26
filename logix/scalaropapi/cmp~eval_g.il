// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// byte eval<byte>(ComparisonKind:byte kind, byte a, byte b)
// IL
byte eval<byte>(ComparisonKind:byte kind, byte a, byte b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// sbyte eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
// IL
sbyte eval<sbyte>(ComparisonKind:byte kind, sbyte a, sbyte b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// ushort eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
// IL
ushort eval<ushort>(ComparisonKind:byte kind, ushort a, ushort b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// Int16 eval<Int16>(ComparisonKind:byte kind, Int16 a, Int16 b)
// IL
Int16 eval<Int16>(ComparisonKind:byte kind, Int16 a, Int16 b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// uint eval<uint>(ComparisonKind:byte kind, uint a, uint b)
// IL
uint eval<uint>(ComparisonKind:byte kind, uint a, uint b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// int eval<int>(ComparisonKind:byte kind, int a, int b)
// IL
int eval<int>(ComparisonKind:byte kind, int a, int b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// ulong eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
// IL
ulong eval<ulong>(ComparisonKind:byte kind, ulong a, ulong b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
// Id := 100664044, Name := T Z0.Logix.ScalarOpApi::eval<T>(Z0.ComparisonKind,T,T)
// long eval<long>(ComparisonKind:byte kind, long a, long b)
// IL
long eval<long>(ComparisonKind:byte kind, long a, long b)
{
    IL_0000: ldarg.0
    IL_0001: ldc.i4.1
    IL_0002: sub
    IL_0003: switch(IL_0022,IL_0032,IL_003A,IL_0042,IL_004A,IL_002A)
    IL_0020: br.s IL_0052
    IL_0022: ldarg.1
    IL_0023: ldarg.2
    IL_0024: call T Z0.Logix.ScalarOps::equals<T>(T,T)
    IL_0029: ret
    IL_002A: ldarg.1
    IL_002B: ldarg.2
    IL_002C: call T Z0.Logix.ScalarOps::neq<T>(T,T)
    IL_0031: ret
    IL_0032: ldarg.1
    IL_0033: ldarg.2
    IL_0034: call T Z0.Logix.ScalarOps::lt<T>(T,T)
    IL_0039: ret
    IL_003A: ldarg.1
    IL_003B: ldarg.2
    IL_003C: call T Z0.Logix.ScalarOps::lteq<T>(T,T)
    IL_0041: ret
    IL_0042: ldarg.1
    IL_0043: ldarg.2
    IL_0044: call T Z0.Logix.ScalarOps::gt<T>(T,T)
    IL_0049: ret
    IL_004A: ldarg.1
    IL_004B: ldarg.2
    IL_004C: call T Z0.Logix.ScalarOps::gteq<T>(T,T)
    IL_0051: ret
    IL_0052: ldarg.0
    IL_0053: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.ComparisonKind)
    IL_0058: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_005D: throw
}
------------------------------------------------------------------------------------------------------------------------
