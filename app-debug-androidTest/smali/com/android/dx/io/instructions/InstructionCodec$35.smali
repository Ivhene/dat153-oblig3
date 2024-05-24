.class final enum Lcom/android/dx/io/instructions/InstructionCodec$35;
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

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 6
    .param p1, "opcodeUnit"    # I
    .param p2, "in"    # Lcom/android/dx/io/instructions/CodeInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 784
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 785
    .local v0, "baseAddress":I
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    .line 786
    .local v1, "size":I
    new-array v2, v1, [I

    .line 787
    .local v2, "keys":[I
    new-array v3, v1, [I

    .line 789
    .local v3, "targets":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 790
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    aput v5, v2, v4

    .line 789
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 793
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 794
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    .line 793
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 797
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;I[I[I)V

    return-object v4
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 8
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 803
    move-object v0, p1

    check-cast v0, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;

    .line 805
    .local v0, "payload":Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getKeys()[I

    move-result-object v1

    .line 806
    .local v1, "keys":[I
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getTargets()[I

    move-result-object v2

    .line 807
    .local v2, "targets":[I
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    move-result v3

    .line 809
    .local v3, "baseAddress":I
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/SparseSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v4

    invoke-interface {p2, v4}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 810
    array-length v4, v2

    invoke-static {v4}, Lcom/android/dx/io/instructions/InstructionCodec;->access$2000(I)S

    move-result v4

    invoke-interface {p2, v4}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 812
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget v7, v1, v6

    .line 813
    .local v7, "key":I
    invoke-interface {p2, v7}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 812
    .end local v7    # "key":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 816
    :cond_0
    array-length v4, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v2, v5

    .line 817
    .local v6, "target":I
    sub-int v7, v6, v3

    invoke-interface {p2, v7}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 816
    .end local v6    # "target":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 819
    :cond_1
    return-void
.end method
