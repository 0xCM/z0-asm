// Id := 100664022, Name := Z0.BitVector`1<T> Z0.Logix.BitVectorOpApi::evalspec<T>(Z0.BinaryBitLogicKind,Z0.BitVector`1<T>,Z0.BitVector`1<T>)
// BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
// IL
BitVector<ulong> evalspec<ulong>(BinaryBitLogicKind:byte kind, BitVector<ulong> x, BitVector<ulong> y)
{
    IL_0000: ldarg.0
    IL_0001: switch(IL_0050,IL_0058,IL_00B4,IL_0088,IL_00A4,IL_008A,IL_0078,IL_0068,IL_0070,IL_0080,IL_0094,IL_009C,IL_008C,IL_00AC,IL_0060,IL_0048)
    IL_0046: br.s IL_00BC
    IL_0048: ldarg.1
    IL_0049: ldarg.2
    IL_004A: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::true<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_004F: ret
    IL_0050: ldarg.1
    IL_0051: ldarg.2
    IL_0052: call Z0.BitVector`1<T> Z0.Logix.BitVectorOps::false<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0057: ret
    IL_0058: ldarg.1
    IL_0059: ldarg.2
    IL_005A: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::and<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_005F: ret
    IL_0060: ldarg.1
    IL_0061: ldarg.2
    IL_0062: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::nand<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0067: ret
    IL_0068: ldarg.1
    IL_0069: ldarg.2
    IL_006A: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::or<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_006F: ret
    IL_0070: ldarg.1
    IL_0071: ldarg.2
    IL_0072: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::nor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0077: ret
    IL_0078: ldarg.1
    IL_0079: ldarg.2
    IL_007A: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::xor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_007F: ret
    IL_0080: ldarg.1
    IL_0081: ldarg.2
    IL_0082: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::xnor<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0087: ret
    IL_0088: ldarg.1
    IL_0089: ret
    IL_008A: ldarg.2
    IL_008B: ret
    IL_008C: ldarg.1
    IL_008D: ldarg.2
    IL_008E: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::lnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_0093: ret
    IL_0094: ldarg.1
    IL_0095: ldarg.2
    IL_0096: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::rnot<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_009B: ret
    IL_009C: ldarg.1
    IL_009D: ldarg.2
    IL_009E: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::impl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00A3: ret
    IL_00A4: ldarg.1
    IL_00A5: ldarg.2
    IL_00A6: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::nonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00AB: ret
    IL_00AC: ldarg.1
    IL_00AD: ldarg.2
    IL_00AE: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::cimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00B3: ret
    IL_00B4: ldarg.1
    IL_00B5: ldarg.2
    IL_00B6: call Z0.BitVector`1<T> Z0.Logix.BitVectorOpSpecs::cnonimpl<T>(Z0.BitVector`1<T>,Z0.BitVector`1<T>)
    IL_00BB: ret
    IL_00BC: ldarg.0
    IL_00BD: call System.String Z0.Logix.OpHelpers::sig<T>(Z0.BinaryBitLogicKind)
    IL_00C2: newobj System.Void System.NotSupportedException::.ctor(System.String)
    IL_00C7: throw
}
