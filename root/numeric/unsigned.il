// System.Boolean Z0.Numeric::unsigned(System.Object)
// bool unsigned(Object value)
// AggressiveInlining
bool unsigned(Object value)
{
    IL_0000: ldarg.0
    IL_0001: isinst System.Byte
    IL_0006: brtrue.s IL_0022
    IL_0008: ldarg.0
    IL_0009: isinst System.UInt16
    IL_000E: brtrue.s IL_0022
    IL_0010: ldarg.0
    IL_0011: isinst System.UInt32
    IL_0016: brtrue.s IL_0022
    IL_0018: ldarg.0
    IL_0019: isinst System.UInt64
    IL_001E: ldnull
    IL_001F: cgt.un
    IL_0021: ret
    IL_0022: ldc.i4.1
    IL_0023: ret
}
------------------------------------------------------------------------------------------------------------------------
