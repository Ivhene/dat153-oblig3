.class public abstract Lorg/checkerframework/org/apache/bcel/generic/Select;
.super Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;
.source "Select.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/VariableLengthInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;


# instance fields
.field protected fixed_length:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected indices:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected match:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected match_length:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected padding:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->padding:I

    .line 83
    return-void
.end method

.method constructor <init>(S[I[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 4
    .param p1, "opcode"    # S
    .param p2, "match"    # [I
    .param p3, "targets"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p4, "defaultTarget"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;-><init>(SLorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->padding:I

    .line 98
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    .line 99
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 101
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 102
    array-length v2, p3

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p3, v1

    .line 103
    .local v3, "target2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-static {v0, v3, p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 102
    .end local v3    # "target2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    array-length v0, p2

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match_length:I

    array-length v1, p3

    if-ne v0, v1, :cond_1

    .line 109
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    .line 110
    return-void

    .line 106
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Match and target array have not the same length: Match length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Target length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 240
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/Select;

    .line 241
    .local v0, "copy":Lorg/checkerframework/org/apache/bcel/generic/Select;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    .line 242
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    .line 243
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v1}, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 244
    return-object v0
.end method

.method public containsTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 6
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 226
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 227
    return v1

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 230
    .local v5, "target2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    if-ne v5, p1, :cond_1

    .line 231
    return v1

    .line 229
    .end local v5    # "target2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    :cond_2
    return v3
.end method

.method dispose()V
    .locals 4

    .line 253
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->dispose()V

    .line 254
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 255
    .local v3, "target2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v3, p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->removeTargeter(Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 254
    .end local v3    # "target2":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_0
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

    .line 144
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->padding:I

    if-ge v0, v1, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargetOffset()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setIndex(I)V

    .line 149
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 150
    return-void
.end method

.method final getFixed_length()I
    .locals 1

    .line 314
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->fixed_length:I

    return v0
.end method

.method final getIndices(I)I
    .locals 1
    .param p1, "index"    # I

    .line 297
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getIndices()[I
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    return-object v0
.end method

.method final getMatch(I)I
    .locals 1
    .param p1, "index"    # I

    .line 288
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    aget v0, v0, p1

    return v0
.end method

.method final getMatch_length()I
    .locals 1

    .line 332
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match_length:I

    return v0
.end method

.method public getMatchs()[I
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    return-object v0
.end method

.method final getPadding()I
    .locals 1

    .line 388
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->padding:I

    return v0
.end method

.method final getTarget(I)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1
    .param p1, "index"    # I

    .line 305
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 2
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->padding:I

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->padding:I

    if-ge v0, v1, :cond_0

    .line 160
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setIndex(I)V

    .line 164
    return-void
.end method

.method final setFixed_length(I)V
    .locals 0
    .param p1, "fixed_length"    # I

    .line 323
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->fixed_length:I

    .line 324
    return-void
.end method

.method final setIndices(II)I
    .locals 1
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 394
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    aput p2, v0, p1

    .line 395
    return p2
.end method

.method final setIndices([I)V
    .locals 0
    .param p1, "array"    # [I

    .line 361
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    .line 362
    return-void
.end method

.method final setMatch(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 352
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    aput p2, v0, p1

    .line 353
    return-void
.end method

.method final setMatch_length(I)I
    .locals 0
    .param p1, "match_length"    # I

    .line 341
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match_length:I

    .line 342
    return p1
.end method

.method final setMatches([I)V
    .locals 0
    .param p1, "array"    # [I

    .line 370
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    .line 371
    return-void
.end method

.method public setTarget(ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "target"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 193
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 194
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aput-object p2, v0, p1

    .line 195
    return-void
.end method

.method final setTargets([Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 0
    .param p1, "array"    # [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 379
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 380
    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "verbose"    # Z

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match_length:I

    if-ge v1, v2, :cond_1

    .line 175
    const-string v2, "null"

    .line 176
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_0
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->match:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->indices:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    const-string v4, "})"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v2    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 183
    :cond_2
    const-string v1, " ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected updatePosition(II)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "max_offset"    # I

    .line 128
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setPosition(I)V

    .line 129
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getLength()I

    move-result v0

    int-to-short v0, v0

    .line 132
    .local v0, "old_length":S
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->padding:I

    .line 133
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->fixed_length:I

    add-int/2addr v2, v1

    int-to-short v1, v2

    invoke-super {p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->setLength(I)V

    .line 134
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 4
    .param p1, "old_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "new_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "targeted":Z
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 209
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/Select;->targets:[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 210
    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 211
    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/org/apache/bcel/generic/Select;->setTarget(ILorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 209
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 218
    return-void

    .line 216
    :cond_3
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not targeting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
