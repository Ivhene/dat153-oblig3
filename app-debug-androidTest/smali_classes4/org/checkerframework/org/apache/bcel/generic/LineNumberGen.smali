.class public Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;
.super Ljava/lang/Object;
.source "LineNumberGen.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;
.implements Ljava/lang/Cloneable;


# instance fields
.field private ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field private src_line:I


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;I)V
    .locals 0
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "src_line"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->setInstruction(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 43
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->setSourceLine(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 92
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Clone Not Supported"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public containsTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z
    .locals 1
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 52
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInstruction()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-object v0
.end method

.method public getLineNumber()Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    .locals 3

    .line 76
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getPosition()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->src_line:I

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;-><init>(II)V

    return-object v0
.end method

.method public getSourceLine()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->src_line:I

    return v0
.end method

.method public setInstruction(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 81
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-static {v0, p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->notifyTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionTargeter;)V

    .line 85
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 86
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "InstructionHandle may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSourceLine(I)V
    .locals 0
    .param p1, "src_line"    # I

    .line 105
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->src_line:I

    .line 106
    return-void
.end method

.method public updateTarget(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V
    .locals 3
    .param p1, "old_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .param p2, "new_ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 62
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-ne p1, v0, :cond_0

    .line 65
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->setInstruction(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 66
    return-void

    .line 63
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

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LineNumberGen;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
