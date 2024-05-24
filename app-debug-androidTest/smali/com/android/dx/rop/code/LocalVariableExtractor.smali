.class public final Lcom/android/dx/rop/code/LocalVariableExtractor;
.super Ljava/lang/Object;
.source "LocalVariableExtractor.java"


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private final resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

.field private final workSet:[I


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
    .locals 3
    .param p1, "method"    # Lcom/android/dx/rop/code/RopMethod;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 61
    .local v0, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v1

    .line 63
    .local v1, "maxLabel":I
    iput-object p1, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->method:Lcom/android/dx/rop/code/RopMethod;

    .line 64
    iput-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    .line 65
    new-instance v2, Lcom/android/dx/rop/code/LocalVariableInfo;

    invoke-direct {v2, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    iput-object v2, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    .line 66
    invoke-static {v1}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    .line 67
    return-void

    .line 57
    .end local v0    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .end local v1    # "maxLabel":I
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doit()Lcom/android/dx/rop/code/LocalVariableInfo;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v0

    .line 76
    .local v0, "label":I
    :goto_0
    if-ltz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    invoke-static {v1, v0}, Lcom/android/dx/util/Bits;->clear([II)V

    .line 79
    invoke-direct {p0, v0}, Lcom/android/dx/rop/code/LocalVariableExtractor;->processBlock(I)V

    .line 77
    iget-object v1, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    goto :goto_0

    .line 82
    .end local v0    # "label":I
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalVariableInfo;->setImmutable()V

    .line 83
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    return-object v0
.end method

.method public static extract(Lcom/android/dx/rop/code/RopMethod;)Lcom/android/dx/rop/code/LocalVariableInfo;
    .locals 2
    .param p0, "method"    # Lcom/android/dx/rop/code/RopMethod;

    .line 46
    new-instance v0, Lcom/android/dx/rop/code/LocalVariableExtractor;

    invoke-direct {v0, p0}, Lcom/android/dx/rop/code/LocalVariableExtractor;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    .line 47
    .local v0, "lve":Lcom/android/dx/rop/code/LocalVariableExtractor;
    invoke-direct {v0}, Lcom/android/dx/rop/code/LocalVariableExtractor;->doit()Lcom/android/dx/rop/code/LocalVariableInfo;

    move-result-object v1

    return-object v1
.end method

.method private processBlock(I)V
    .locals 14
    .param p1, "label"    # I

    .line 92
    iget-object v0, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 93
    .local v0, "primaryState":Lcom/android/dx/rop/code/RegisterSpecSet;
    iget-object v1, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v1

    .line 94
    .local v1, "block":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v2

    .line 95
    .local v2, "insns":Lcom/android/dx/rop/code/InsnList;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v3

    .line 104
    .local v3, "insnSz":I
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->hasExceptionHandlers()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-virtual {v2}, Lcom/android/dx/rop/code/InsnList;->getLast()Lcom/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 106
    .local v4, "canThrowDuringLastInsn":Z
    :goto_0
    add-int/lit8 v5, v3, -0x1

    .line 107
    .local v5, "freezeSecondaryStateAt":I
    move-object v6, v0

    .line 114
    .local v6, "secondaryState":Lcom/android/dx/rop/code/RegisterSpecSet;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_5

    .line 115
    if-eqz v4, :cond_1

    if-ne v7, v5, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 118
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 121
    :cond_1
    invoke-virtual {v2, v7}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v8

    .line 124
    .local v8, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v8}, Lcom/android/dx/rop/code/Insn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 126
    .local v9, "result":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v9, :cond_2

    .line 132
    invoke-virtual {v8}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 134
    if-eqz v9, :cond_4

    .line 135
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 136
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 143
    invoke-virtual {v0, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 149
    .local v10, "already":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v9, v10}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 155
    nop

    .line 156
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 158
    .local v11, "previous":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v11, :cond_3

    .line 159
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v13

    if-eq v12, v13, :cond_3

    .line 161
    invoke-virtual {v0, v11}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 164
    :cond_3
    iget-object v12, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v12, v8, v9}, Lcom/android/dx/rop/code/LocalVariableInfo;->addAssignment(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 165
    invoke-virtual {v0, v9}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 114
    .end local v8    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v9    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v10    # "already":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v11    # "previous":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 169
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 177
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v7

    .line 178
    .local v7, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v7}, Lcom/android/dx/util/IntList;->size()I

    move-result v8

    .line 179
    .local v8, "succSz":I
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v9

    .line 181
    .local v9, "primarySuccessor":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v8, :cond_8

    .line 182
    invoke-virtual {v7, v10}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 183
    .local v11, "succ":I
    if-ne v11, v9, :cond_6

    move-object v12, v0

    goto :goto_4

    :cond_6
    move-object v12, v6

    .line 186
    .local v12, "state":Lcom/android/dx/rop/code/RegisterSpecSet;
    :goto_4
    iget-object v13, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->resultInfo:Lcom/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v13, v11, v12}, Lcom/android/dx/rop/code/LocalVariableInfo;->mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 187
    iget-object v13, p0, Lcom/android/dx/rop/code/LocalVariableExtractor;->workSet:[I

    invoke-static {v13, v11}, Lcom/android/dx/util/Bits;->set([II)V

    .line 181
    .end local v11    # "succ":I
    .end local v12    # "state":Lcom/android/dx/rop/code/RegisterSpecSet;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 190
    .end local v10    # "i":I
    :cond_8
    return-void
.end method
