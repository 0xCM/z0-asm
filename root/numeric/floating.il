// System.Boolean Z0.Numeric::floating(System.Object)
// bool floating(Object value)
// AggressiveInlining
bool floating(Object value)
{
    IL_0000: ldarg.0
    IL_0001: isinst System.Single
    IL_0006: brtrue.s IL_0012
    IL_0008: ldarg.0
    IL_0009: isinst System.Double
    IL_000E: ldnull
    IL_000F: cgt.un
    IL_0011: ret
    IL_0012: ldc.i4.1
    IL_0013: ret
}
------------------------------------------------------------------------------------------------------------------------
