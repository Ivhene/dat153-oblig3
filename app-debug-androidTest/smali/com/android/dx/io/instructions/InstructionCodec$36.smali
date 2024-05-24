.class final enum Lcom/android/dx/io/instructions/InstructionCodec$36;
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

    .line 822
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 7
    .param p1, "opcodeUnit"    # I
    .param p2, "in"    # Lcom/android/dx/io/instructions/CodeInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 826
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v0

    .line 827
    .local v0, "elementWidth":I
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v1

    .line 829
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 870
    new-instance v2, Lcom/android/dex/DexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bogus element_width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 871
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    :sswitch_0
    new-array v2, v1, [J

    .line 861
    .local v2, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 862
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 864
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[J)V

    return-object v3

    .line 852
    .end local v2    # "array":[J
    :sswitch_1
    new-array v2, v1, [I

    .line 853
    .local v2, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 854
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 853
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 856
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[I)V

    return-object v3

    .line 844
    .end local v2    # "array":[I
    :sswitch_2
    new-array v2, v1, [S

    .line 845
    .local v2, "array":[S
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 846
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v2, v3

    .line 845
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 848
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[S)V

    return-object v3

    .line 831
    .end local v2    # "array":[S
    :sswitch_3
    new-array v2, v1, [B

    .line 832
    .local v2, "array":[B
    const/4 v3, 0x1

    .line 833
    .local v3, "even":Z
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "value":I
    :goto_3
    if-ge v4, v1, :cond_5

    .line 834
    if-eqz v3, :cond_3

    .line 835
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v5

    .line 837
    :cond_3
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 838
    shr-int/lit8 v5, v5, 0x8

    .line 833
    add-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    move v3, v6

    goto :goto_3

    .line 840
    .end local v4    # "i":I
    .end local v5    # "value":I
    :cond_5
    new-instance v4, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[B)V

    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 6
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 876
    move-object v0, p1

    check-cast v0, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;

    .line 878
    .local v0, "payload":Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getElementWidthUnit()S

    move-result v1

    .line 879
    .local v1, "elementWidth":S
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 881
    .local v2, "data":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v3

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 882
    invoke-interface {p2, v1}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 883
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/FillArrayDataPayloadDecodedInstruction;->getSize()I

    move-result v3

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 885
    sparse-switch v1, :sswitch_data_0

    .line 891
    new-instance v3, Lcom/android/dex/DexException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bogus element_width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 892
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 889
    :sswitch_0
    move-object v3, v2

    check-cast v3, [J

    check-cast v3, [J

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->write([J)V

    goto :goto_0

    .line 888
    :sswitch_1
    move-object v3, v2

    check-cast v3, [I

    check-cast v3, [I

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->write([I)V

    goto :goto_0

    .line 887
    :sswitch_2
    move-object v3, v2

    check-cast v3, [S

    check-cast v3, [S

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->write([S)V

    goto :goto_0

    .line 886
    :sswitch_3
    move-object v3, v2

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->write([B)V

    .line 895
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
