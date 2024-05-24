.class public Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;
.super Lorg/checkerframework/org/apache/bcel/generic/Select;
.source "TABLESWITCH.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>([I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "match"    # [I
    .param p2, "targets"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "defaultTarget"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 48
    const/16 v0, 0xaa

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/Select;-><init>(S[I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->getMatch_length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xd

    int-to-short v0, v0

    .line 51
    .local v0, "_length":S
    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setLength(I)V

    .line 52
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->setFixed_length(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 107
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitVariableLengthInstruction(Lorg/checkerframework/org/apache/bcel/generic/VariableLengthInstruction;)V

    .line 108
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 109
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitBranchInstruction(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V

    .line 110
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitSelect(Lorg/checkerframework/org/apache/bcel/generic/Select;)V

    .line 111
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTABLESWITCH(Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;)V

    .line 112
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Select;->dump(Ljava/io/DataOutputStream;)V

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->getMatch_length()I

    move-result v0

    .line 64
    .local v0, "_match_length":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getMatch(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 65
    .local v2, "low":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 66
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getMatch(I)I

    move-result v1

    .line 67
    .local v1, "high":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 68
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 69
    invoke-super {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTarget(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->getTargetOffset(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->setIndices(II)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 6
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/Select;->initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V

    .line 80
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v0

    .line 81
    .local v0, "low":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v1

    .line 82
    .local v1, "high":I
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    .line 83
    .local v2, "_match_length":I
    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->setMatch_length(I)I

    .line 84
    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0xd

    int-to-short v3, v3

    .line 85
    .local v3, "_fixed_length":S
    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;->setFixed_length(I)V

    .line 86
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getPadding()I

    move-result v4

    add-int/2addr v4, v3

    int-to-short v4, v4

    invoke-super {p0, v4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setLength(I)V

    .line 87
    new-array v4, v2, [I

    invoke-super {p0, v4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setMatches([I)V

    .line 88
    new-array v4, v2, [I

    invoke-super {p0, v4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setIndices([I)V

    .line 89
    new-array v4, v2, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-super {p0, v4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setTargets([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 90
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 91
    add-int v5, v0, v4

    invoke-super {p0, v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setMatch(II)V

    .line 92
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v5

    invoke-super {p0, v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setIndices(II)I

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    .end local v4    # "i":I
    :cond_0
    return-void
.end method
