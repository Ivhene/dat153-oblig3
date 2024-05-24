.class public final Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
.super Ljava/lang/Object;
.source "CodeExceptionGen.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
.implements Ljava/lang/Cloneable;


# instance fields
.field private catch_type:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

.field private end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V
    .locals 0
    .param p1, "start_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "end_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p3, "handler_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p4, "catch_type"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setStartPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 56
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setEndPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 57
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setHandlerPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 58
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->catch_type:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 182
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Clone Not Supported"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public containsTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 136
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

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

.method public getCatchType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->catch_type:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v0
.end method

.method public getCodeException(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .locals 5
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 72
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 73
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->catch_type:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)I

    move-result v4

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;-><init>(IIII)V

    .line 72
    return-object v0
.end method

.method public getEndPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public setCatchType(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V
    .locals 0
    .param p1, "catch_type"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 142
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->catch_type:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 143
    return-void
.end method

.method public setEndPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "end_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 92
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 93
    return-void
.end method

.method public setHandlerPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "handler_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 100
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 101
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 102
    return-void
.end method

.method public setStartPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 1
    .param p1, "start_pc"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 82
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 83
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeExceptionGen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

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
    .locals 5
    .param p1, "old_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "new_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "targeted":Z
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v1, p1, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setStartPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v1, p1, :cond_1

    .line 117
    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setEndPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 120
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v1, p1, :cond_2

    .line 121
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->setHandlerPC(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 124
    :cond_2
    if-eqz v0, :cond_3

    .line 128
    return-void

    .line 125
    :cond_3
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

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->start_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->end_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->handler_pc:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

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
