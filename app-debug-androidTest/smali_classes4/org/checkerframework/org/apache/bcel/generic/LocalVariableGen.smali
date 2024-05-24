.class public Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
.super Ljava/lang/Object;
.source "LocalVariableGen.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
.implements Lorg/checkerframework/org/apache/bcel/generic/NamedAndTyped;
.implements Ljava/lang/Cloneable;


# instance fields
.field private end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private index:I

.field private live_to_end:Z

.field private name:Ljava/lang/String;

.field private orig_index:I

.field private start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private type:Lorg/checkerframework/org/apache/bcel/generic/Type;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p4, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p5, "end"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    .line 61
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->name:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 63
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->index:I

    .line 64
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setStart(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 65
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setEnd(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 66
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->orig_index:I

    .line 67
    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->live_to_end:Z

    .line 68
    return-void

    .line 59
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .param p4, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p5, "end"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p6, "orig_index"    # I

    .line 84
    invoke-direct/range {p0 .. p5}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;-><init>(ILjava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/Type;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 85
    iput p6, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->orig_index:I

    .line 86
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 260
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Clone Not Supported"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public containsTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 225
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method dispose()V
    .locals 1

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setStart(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 217
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setEnd(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 218
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 243
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    return v1

    .line 246
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;

    .line 247
    .local v0, "l":Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;
    iget v2, v0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->index:I

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->index:I

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->index:I

    return v0
.end method

.method public getLiveToEnd()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->live_to_end:Z

    return v0
.end method

.method public getLocalVariable(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .locals 13
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "start_pc":I
    const/4 v1, 0x0

    .line 106
    .local v1, "length":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v0

    .line 108
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v2

    sub-int v1, v2, v0

    .line 109
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->live_to_end:Z

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 113
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v10

    .line 114
    .local v10, "name_index":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v11

    .line 115
    .local v11, "signature_index":I
    new-instance v12, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    iget v7, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->index:I

    .line 116
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v8

    iget v9, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->orig_index:I

    move-object v2, v12

    move v3, v0

    move v4, v1

    move v5, v10

    move v6, v11

    invoke-direct/range {v2 .. v9}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;-><init>(IIIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;I)V

    .line 115
    return-object v12
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigIndex()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->orig_index:I

    return v0
.end method

.method public getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setEnd(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "end"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 186
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 187
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 188
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 121
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->index:I

    .line 122
    return-void
.end method

.method public setLiveToEnd(Z)V
    .locals 0
    .param p1, "live_to_end"    # Z

    .line 136
    iput-boolean p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->live_to_end:Z

    .line 137
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->name:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setStart(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "start"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 180
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 181
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 182
    return-void
.end method

.method public setType(Lorg/checkerframework/org/apache/bcel/generic/Type;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 159
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalVariableGen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->type:Lorg/checkerframework/org/apache/bcel/generic/Type;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 4
    .param p1, "old_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "new_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "targeted":Z
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v1, p1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setStart(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v1, p1, :cond_1

    .line 203
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->setEnd(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 206
    :cond_1
    if-eqz v0, :cond_2

    .line 210
    return-void

    .line 207
    :cond_2
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not targeting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->start:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableGen;->end:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
