.class final enum Lcom/android/dx/io/instructions/InstructionCodec$34;
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

    .line 746
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

    .line 750
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->baseAddressForCursor()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 751
    .local v0, "baseAddress":I
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    .line 752
    .local v1, "size":I
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v2

    .line 753
    .local v2, "firstKey":I
    new-array v3, v1, [I

    .line 755
    .local v3, "targets":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 756
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->readInt()I

    move-result v5

    add-int/2addr v5, v0

    aput v5, v3, v4

    .line 755
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 759
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;II[I)V

    return-object v4
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 765
    move-object v0, p1

    check-cast v0, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;

    .line 767
    .local v0, "payload":Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getTargets()[I

    move-result-object v1

    .line 768
    .local v1, "targets":[I
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->baseAddressForCursor()I

    move-result v2

    .line 770
    .local v2, "baseAddress":I
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getOpcodeUnit()S

    move-result v3

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 771
    array-length v3, v1

    invoke-static {v3}, Lcom/android/dx/io/instructions/InstructionCodec;->access$2000(I)S

    move-result v3

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 772
    invoke-virtual {v0}, Lcom/android/dx/io/instructions/PackedSwitchPayloadDecodedInstruction;->getFirstKey()I

    move-result v3

    invoke-interface {p2, v3}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 774
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v1, v4

    .line 775
    .local v5, "target":I
    sub-int v6, v5, v2

    invoke-interface {p2, v6}, Lcom/android/dx/io/instructions/CodeOutput;->writeInt(I)V

    .line 774
    .end local v5    # "target":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 777
    :cond_0
    return-void
.end method
