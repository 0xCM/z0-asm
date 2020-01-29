// System.Span`1<System.UInt32> Z0.AsmSpecs.AsmConstructs::alloc_32u(System.Int32)
// Span<uint> alloc_32u(int len)
// NoInlining
Span<uint> alloc_32u(int len)
{
    IL_0000: ldarg.0
    IL_0001: newarr System.UInt32
    IL_0006: call System.Span`1<System.UInt32> System.Span`1<System.UInt32>::op_Implicit(System.UInt32[])
    IL_000B: ret
}
------------------------------------------------------------------------------------------------------------------------
