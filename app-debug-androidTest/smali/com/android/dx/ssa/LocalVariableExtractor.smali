.class public Lcom/android/dx/ssa/LocalVariableExtractor;
.super Ljava/lang/Object;
.source "LocalVariableExtractor.java"


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Lcom/android/dx/ssa/SsaMethod;

.field private final resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

.field private final workSet:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 3
    .param p1, "method"    # Lcom/android/dx/ssa/SsaMethod;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    iput-object p1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    .line 71
    iput-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-direct {v1, p1}, Lcom/android/dx/ssa/LocalVariableInfo;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    iput-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    .line 73
    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    .line 74
    return-void

    .line 65
    .end local v0    # "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doit()Lcom/android/dx/ssa/LocalVariableInfo;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v0

    .line 86
    .local v0, "bi":I
    :goto_0
    if-ltz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 89
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->processBlock(I)V

    .line 87
    iget-object v1, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    .line 93
    .end local v0    # "bi":I
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/LocalVariableInfo;->setImmutable()V

    .line 94
    iget-object v0, p0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    return-object v0
.end method

.method public static extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;
    .locals 2
    .param p0, "method"    # Lcom/android/dx/ssa/SsaMethod;

    .line 54
    new-instance v0, Lcom/android/dx/ssa/LocalVariableExtractor;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/LocalVariableExtractor;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 55
    .local v0, "lve":Lcom/android/dx/ssa/LocalVariableExtractor;
    invoke-direct {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->doit()Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object v1

    return-object v1
.end method

.method private processBlock(I)V
    .locals 17
    .param p1, "blockIndex"    # I

    .line 103
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    .line 104
    invoke-virtual {v2, v1}, Lcom/android/dx/ssa/LocalVariableInfo;->mutableCopyOfStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 105
    .local v2, "primaryState":Lcom/android/dx/rop/code/RegisterSpecSet;
    iget-object v3, v0, Lcom/android/dx/ssa/LocalVariableExtractor;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 106
    .local v3, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v4

    .line 107
    .local v4, "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 110
    .local v5, "insnSz":I
    iget-object v6, v0, Lcom/android/dx/ssa/LocalVariableExtractor;->method:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaMethod;->getExitBlockIndex()I

    move-result v6

    if-ne v1, v6, :cond_0

    .line 111
    return-void

    .line 121
    :cond_0
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaInsn;

    .line 122
    .local v6, "lastInsn":Lcom/android/dx/ssa/SsaInsn;
    nop

    .line 123
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v8

    .line 124
    .local v7, "hasExceptionHandlers":Z
    :goto_0
    if-eqz v7, :cond_2

    .line 125
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    if-eqz v10, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    nop

    .line 126
    .local v8, "canThrowDuringLastInsn":Z
    :goto_1
    add-int/lit8 v9, v5, -0x1

    .line 127
    .local v9, "freezeSecondaryStateAt":I
    move-object v10, v2

    .line 134
    .local v10, "secondaryState":Lcom/android/dx/rop/code/RegisterSpecSet;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v5, :cond_9

    .line 135
    if-eqz v8, :cond_3

    if-ne v11, v9, :cond_3

    .line 137
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 138
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 141
    :cond_3
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/dx/ssa/SsaInsn;

    .line 144
    .local v12, "insn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 146
    .local v13, "result":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v13, :cond_5

    .line 149
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 151
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 152
    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    move-object/from16 v16, v4

    goto :goto_4

    .line 151
    :cond_4
    move-object/from16 v16, v4

    goto :goto_4

    .line 157
    :cond_5
    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 159
    invoke-virtual {v2, v13}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 165
    .local v14, "already":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v13, v14}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 171
    nop

    .line 172
    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/android/dx/rop/code/RegisterSpecSet;->localItemToSpec(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v15

    .line 174
    .local v15, "previous":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v15, :cond_6

    .line 175
    invoke-virtual {v15}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    move-object/from16 v16, v4

    .end local v4    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .local v16, "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-eq v1, v4, :cond_7

    .line 177
    invoke-virtual {v2, v15}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_3

    .line 174
    .end local v16    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .restart local v4    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    :cond_6
    move-object/from16 v16, v4

    .line 180
    .end local v4    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .restart local v16    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v1, v12, v13}, Lcom/android/dx/ssa/LocalVariableInfo;->addAssignment(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 181
    invoke-virtual {v2, v13}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_4

    .line 165
    .end local v15    # "previous":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v16    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .restart local v4    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    :cond_8
    move-object/from16 v16, v4

    .line 134
    .end local v4    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v12    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v13    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v14    # "already":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v16    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move-object/from16 v4, v16

    goto :goto_2

    .end local v16    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .restart local v4    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    :cond_9
    move-object/from16 v16, v4

    .line 185
    .end local v4    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v11    # "i":I
    .restart local v16    # "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 193
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v1

    .line 194
    .local v1, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    .line 195
    .local v4, "succSz":I
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v11

    .line 197
    .local v11, "primarySuccessor":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v4, :cond_c

    .line 198
    invoke-virtual {v1, v12}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v13

    .line 199
    .local v13, "succ":I
    if-ne v13, v11, :cond_a

    move-object v14, v2

    goto :goto_6

    :cond_a
    move-object v14, v10

    .line 202
    .local v14, "state":Lcom/android/dx/rop/code/RegisterSpecSet;
    :goto_6
    iget-object v15, v0, Lcom/android/dx/ssa/LocalVariableExtractor;->resultInfo:Lcom/android/dx/ssa/LocalVariableInfo;

    invoke-virtual {v15, v13, v14}, Lcom/android/dx/ssa/LocalVariableInfo;->mergeStarts(ILcom/android/dx/rop/code/RegisterSpecSet;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 203
    iget-object v15, v0, Lcom/android/dx/ssa/LocalVariableExtractor;->workSet:Ljava/util/BitSet;

    invoke-virtual {v15, v13}, Ljava/util/BitSet;->set(I)V

    .line 197
    .end local v13    # "succ":I
    .end local v14    # "state":Lcom/android/dx/rop/code/RegisterSpecSet;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 206
    .end local v12    # "i":I
    :cond_c
    return-void
.end method
