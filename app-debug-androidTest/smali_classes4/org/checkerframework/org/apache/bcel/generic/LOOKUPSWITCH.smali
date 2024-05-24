.class public Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;
.super Lorg/checkerframework/org/apache/bcel/generic/Select;
.source "LOOKUPSWITCH.java"


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

    .line 42
    const/16 v0, 0xab

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/generic/Select;-><init>(S[I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->getMatch_length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x9

    int-to-short v0, v0

    .line 45
    .local v0, "_length":S
    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setLength(I)V

    .line 46
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->setFixed_length(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 98
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitVariableLengthInstruction(Lorg/checkerframework/org/apache/bcel/generic/VariableLengthInstruction;)V

    .line 99
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackConsumer(Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;)V

    .line 100
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitBranchInstruction(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V

    .line 101
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitSelect(Lorg/checkerframework/org/apache/bcel/generic/Select;)V

    .line 102
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLOOKUPSWITCH(Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;)V

    .line 103
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Select;->dump(Ljava/io/DataOutputStream;)V

    .line 57
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->getMatch_length()I

    move-result v0

    .line 58
    .local v0, "_match_length":I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getMatch(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 61
    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTarget(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->getTargetOffset(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->setIndices(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 5
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/Select;->initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V

    .line 72
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v0

    .line 73
    .local v0, "_match_length":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->setMatch_length(I)I

    .line 74
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x9

    int-to-short v1, v1

    .line 75
    .local v1, "_fixed_length":S
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;->setFixed_length(I)V

    .line 76
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getPadding()I

    move-result v2

    add-int/2addr v2, v0

    int-to-short v2, v2

    .line 77
    .local v2, "_length":S
    invoke-super {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setLength(I)V

    .line 78
    new-array v3, v0, [I

    invoke-super {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setMatches([I)V

    .line 79
    new-array v3, v0, [I

    invoke-super {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setIndices([I)V

    .line 80
    new-array v3, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-super {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setTargets([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 81
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v4

    invoke-super {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setMatch(II)V

    .line 83
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v4

    invoke-super {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setIndices(II)I

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "i":I
    :cond_0
    return-void
.end method
