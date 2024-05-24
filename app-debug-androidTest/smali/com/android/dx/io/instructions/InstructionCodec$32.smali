.class final enum Lcom/android/dx/io/instructions/InstructionCodec$32;
.super Lcom/android/dx/io/instructions/InstructionCodec;
.source "InstructionCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/instructions/InstructionCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 20
    .param p1, "opcodeUnit"    # I
    .param p2, "in"    # Lcom/android/dx/io/instructions/CodeInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 675
    invoke-static/range {p1 .. p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    move-result v7

    .line 676
    .local v7, "opcode":I
    const/16 v0, 0xfa

    if-ne v7, v0, :cond_1

    .line 681
    invoke-static/range {p1 .. p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$300(I)I

    move-result v8

    .line 682
    .local v8, "g":I
    invoke-static/range {p1 .. p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$400(I)I

    move-result v9

    .line 683
    .local v9, "registerCount":I
    invoke-interface/range {p2 .. p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v10

    .line 684
    .local v10, "methodIndex":I
    invoke-interface/range {p2 .. p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v11

    .line 685
    .local v11, "cdef":I
    invoke-static {v11}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1700(I)I

    move-result v12

    .line 686
    .local v12, "c":I
    invoke-static {v11}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1800(I)I

    move-result v13

    .line 687
    .local v13, "d":I
    invoke-static {v11}, Lcom/android/dx/io/instructions/InstructionCodec;->access$300(I)I

    move-result v14

    .line 688
    .local v14, "e":I
    invoke-static {v11}, Lcom/android/dx/io/instructions/InstructionCodec;->access$400(I)I

    move-result v15

    .line 689
    .local v15, "f":I
    invoke-interface/range {p2 .. p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v16

    .line 690
    .local v16, "protoIndex":I
    invoke-static {v7}, Lcom/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/android/dx/io/IndexType;

    move-result-object v17

    .line 692
    .local v17, "indexType":Lcom/android/dx/io/IndexType;
    const/4 v0, 0x1

    if-lt v9, v0, :cond_0

    const/4 v0, 0x5

    if-gt v9, v0, :cond_0

    .line 695
    filled-new-array {v12, v13, v14, v15, v8}, [I

    move-result-object v0

    .line 696
    .local v0, "registers":[I
    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v18

    .line 698
    .end local v0    # "registers":[I
    .local v18, "registers":[I
    new-instance v19, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move v2, v7

    move v3, v10

    move-object/from16 v4, v17

    move/from16 v5, v16

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;I[I)V

    return-object v19

    .line 693
    .end local v18    # "registers":[I
    :cond_0
    new-instance v0, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus registerCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    .end local v8    # "g":I
    .end local v9    # "registerCount":I
    .end local v10    # "methodIndex":I
    .end local v11    # "cdef":I
    .end local v12    # "c":I
    .end local v13    # "d":I
    .end local v14    # "e":I
    .end local v15    # "f":I
    .end local v16    # "protoIndex":I
    .end local v17    # "indexType":Lcom/android/dx/io/IndexType;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 704
    move-object v0, p1

    check-cast v0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    .line 706
    .local v0, "polyInsn":Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getOpcode()I

    move-result v1

    .line 707
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getG()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getRegisterCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/dx/io/instructions/InstructionCodec;->access$500(II)I

    move-result v2

    .line 706
    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    move-result v1

    .line 708
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getIndexUnit()S

    move-result v2

    .line 709
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getC()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getD()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getE()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getF()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1900(IIII)S

    move-result v3

    .line 710
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->getProtoIndex()S

    move-result v4

    .line 706
    invoke-interface {p2, v1, v2, v3, v4}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSSS)V

    .line 712
    return-void
.end method
