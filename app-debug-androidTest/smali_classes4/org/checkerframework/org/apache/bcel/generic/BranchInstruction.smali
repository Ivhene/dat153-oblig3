.class public abstract Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "BranchInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;


# annotations
.annotation runtime Lorg/checkerframework/checker/interning/qual/UsesObjectEquals;
.end annotation


# instance fields
.field protected index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 69
    return-void
.end method

.method protected constructor <init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "opcode"    # S
    .param p2, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 77
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 78
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 79
    return-void
.end method

.method static notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V
    .locals 0
    .param p0, "old_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p1, "new_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "t"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;

    .line 227
    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->removeTargeter(Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->addTargeter(Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 233
    :cond_1
    return-void
.end method


# virtual methods
.method public containsTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 255
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dispose()V
    .locals 1

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    .line 267
    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->position:I

    .line 268
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

    .line 88
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 89
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTargetOffset()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    .line 90
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->isValidShort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 94
    return-void

    .line 91
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Branch target offset too large for short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIndex()I
    .locals 1

    .line 199
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    return v0
.end method

.method protected getPosition()I
    .locals 1

    .line 276
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->position:I

    return v0
.end method

.method public getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method protected getTargetOffset()I
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTargetOffset(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)I

    move-result v0

    return v0
.end method

.method protected getTargetOffset(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)I
    .locals 5
    .param p1, "_target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 102
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v1

    .line 107
    .local v1, "t":I
    if-ltz v1, :cond_0

    .line 111
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->position:I

    sub-int v0, v1, v0

    return v0

    .line 108
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid branch target position offset for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v1    # "t":I
    :cond_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid null handle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 1
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 191
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    .line 192
    return-void
.end method

.method protected setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 294
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    .line 295
    return-void
.end method

.method protected setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 285
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->position:I

    .line 286
    return-void
.end method

.method public setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.target"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 218
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 219
    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 4
    .param p1, "verbose"    # Z

    .line 153
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "s":Ljava/lang/String;
    const-string v1, "null"

    .line 155
    .local v1, "t":Ljava/lang/String;
    const-string v2, ""

    if-eqz p1, :cond_2

    .line 156
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v3, :cond_3

    .line 157
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 158
    const-string v1, "<points to itself>"

    goto :goto_0

    .line 159
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    if-nez v3, :cond_1

    .line 160
    const-string v1, "<null instruction!!!?>"

    goto :goto_0

    .line 165
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v3

    iput v3, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected updatePosition(II)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "max_offset"    # I

    .line 134
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->position:I

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 3
    .param p1, "old_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "new_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 242
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v0, p1, :cond_0

    .line 243
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 247
    return-void

    .line 245
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not targeting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->target:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
