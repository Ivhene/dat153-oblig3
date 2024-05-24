.class public final Lcom/android/dx/rop/code/BasicBlock;
.super Ljava/lang/Object;
.source "BasicBlock.java"

# interfaces
.implements Lcom/android/dx/util/LabeledItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/BasicBlock$Visitor;
    }
.end annotation


# instance fields
.field private final insns:Lcom/android/dx/rop/code/InsnList;

.field private final label:I

.field private final primarySuccessor:I

.field private final successors:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V
    .locals 6
    .param p1, "label"    # I
    .param p2, "insns"    # Lcom/android/dx/rop/code/InsnList;
    .param p3, "successors"    # Lcom/android/dx/util/IntList;
    .param p4, "primarySuccessor"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-ltz p1, :cond_7

    .line 66
    :try_start_0
    invoke-virtual {p2}, Lcom/android/dx/rop/code/InsnList;->throwIfMutable()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    nop

    .line 72
    invoke-virtual {p2}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v0

    .line 74
    .local v0, "sz":I
    if-eqz v0, :cond_6

    .line 78
    add-int/lit8 v1, v0, -0x2

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 79
    invoke-virtual {p2, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    .line 80
    .local v3, "one":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 78
    .end local v3    # "one":Lcom/android/dx/rop/code/Rop;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 81
    .restart local v3    # "one":Lcom/android/dx/rop/code/Rop;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insns["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is a branch or can throw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1    # "i":I
    .end local v3    # "one":Lcom/android/dx/rop/code/Rop;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    .line 87
    .local v1, "lastInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 94
    :try_start_1
    invoke-virtual {p3}, Lcom/android/dx/util/IntList;->throwIfMutable()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    nop

    .line 100
    const/4 v2, -0x1

    if-lt p4, v2, :cond_4

    .line 104
    if-ltz p4, :cond_3

    invoke-virtual {p3, p4}, Lcom/android/dx/util/IntList;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primarySuccessor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not in successors "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    .line 110
    iput-object p2, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    .line 111
    iput-object p3, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    .line 112
    iput p4, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    .line 113
    return-void

    .line 101
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "primarySuccessor < -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :catch_0
    move-exception v2

    .line 97
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "successors == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "insns does not end with a branch or throwing instruction"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    .end local v1    # "lastInsn":Lcom/android/dx/rop/code/Insn;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "insns.size() == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v0    # "sz":I
    :catch_1
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "insns == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canThrow()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->canThrow()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 123
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getExceptionHandlerTypes()Lcom/android/dx/rop/type/TypeList;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 252
    .local v0, "lastInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    return-object v1
.end method

.method public getFirstInsn()Lcom/android/dx/rop/code/Insn;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public getInsns()Lcom/android/dx/rop/code/InsnList;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    return-object v0
.end method

.method public getLabel()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    return v0
.end method

.method public getLastInsn()Lcom/android/dx/rop/code/Insn;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public getPrimarySuccessor()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    return v0
.end method

.method public getSecondarySuccessor()I
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 188
    .local v0, "succ":I
    iget v1, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 192
    :cond_0
    return v0

    .line 183
    .end local v0    # "succ":I
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessors()Lcom/android/dx/util/IntList;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    return-object v0
.end method

.method public hasExceptionHandlers()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 237
    .local v0, "lastInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 134
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlock;
    .locals 5
    .param p1, "delta"    # I

    .line 264
    new-instance v0, Lcom/android/dx/rop/code/BasicBlock;

    iget v1, p0, Lcom/android/dx/rop/code/BasicBlock;->label:I

    iget-object v2, p0, Lcom/android/dx/rop/code/BasicBlock;->insns:Lcom/android/dx/rop/code/InsnList;

    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/InsnList;->withRegisterOffset(I)Lcom/android/dx/rop/code/InsnList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/rop/code/BasicBlock;->successors:Lcom/android/dx/util/IntList;

    iget v4, p0, Lcom/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    return-object v0
.end method
