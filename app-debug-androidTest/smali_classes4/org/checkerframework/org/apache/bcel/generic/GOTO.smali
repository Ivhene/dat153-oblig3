.class public Lorg/checkerframework/org/apache/bcel/generic/GOTO;
.super Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;
.source "GOTO.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/VariableLengthInstruction;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 39
    const/16 v0, 0xa7

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;-><init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 40
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 93
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitVariableLengthInstruction(Lorg/checkerframework/org/apache/bcel/generic/VariableLengthInstruction;)V

    .line 94
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitUnconditionalBranch(Lorg/checkerframework/org/apache/bcel/generic/UnconditionalBranch;)V

    .line 95
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitBranchInstruction(Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;)V

    .line 96
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitGotoInstruction(Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;)V

    .line 97
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitGOTO(Lorg/checkerframework/org/apache/bcel/generic/GOTO;)V

    .line 98
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;->getTargetOffset()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->setIndex(I)V

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;->getOpcode()S

    move-result v0

    .line 51
    .local v0, "_opcode":S
    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    .line 52
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->dump(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;->getTargetOffset()I

    move-result v1

    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->setIndex(I)V

    .line 55
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 56
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 58
    :goto_0
    return-void
.end method

.method protected updatePosition(II)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "max_offset"    # I

    .line 71
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;->getTargetOffset()I

    move-result v0

    .line 72
    .local v0, "i":I
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;->getPosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;->setPosition(I)V

    .line 73
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, p2, 0x7fff

    if-lt v1, v2, :cond_0

    .line 74
    const/16 v1, 0xc8

    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->setOpcode(S)V

    .line 75
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->getLength()I

    move-result v1

    int-to-short v1, v1

    .line 76
    .local v1, "old_length":S
    const/4 v2, 0x5

    invoke-super {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->setLength(I)V

    .line 77
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    return v2

    .line 79
    .end local v1    # "old_length":S
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
