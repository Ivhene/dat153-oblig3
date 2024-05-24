.class public Lcom/android/dx/ssa/back/IdenticalBlockCombiner;
.super Ljava/lang/Object;
.source "IdenticalBlockCombiner.java"


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private final ropMethod:Lcom/android/dx/rop/code/RopMethod;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;)V
    .locals 1
    .param p1, "rm"    # Lcom/android/dx/rop/code/RopMethod;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    .line 44
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    .line 45
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMutableCopy()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    .line 46
    return-void
.end method

.method private combineBlocks(ILcom/android/dx/util/IntList;)V
    .locals 9
    .param p1, "alphaLabel"    # I
    .param p2, "betaLabels"    # Lcom/android/dx/util/IntList;

    .line 136
    invoke-virtual {p2}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 138
    .local v0, "szBetas":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 139
    invoke-virtual {p2, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    .line 140
    .local v2, "betaLabel":I
    iget-object v3, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    .line 141
    .local v3, "bb":Lcom/android/dx/rop/code/BasicBlock;
    iget-object v4, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v4

    .line 142
    .local v4, "preds":Lcom/android/dx/util/IntList;
    invoke-virtual {v4}, Lcom/android/dx/util/IntList;->size()I

    move-result v5

    .line 144
    .local v5, "szPreds":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 145
    iget-object v7, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v4, v6}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 146
    .local v7, "predBlock":Lcom/android/dx/rop/code/BasicBlock;
    invoke-direct {p0, v7, v2, p1}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->replaceSucc(Lcom/android/dx/rop/code/BasicBlock;II)V

    .line 144
    .end local v7    # "predBlock":Lcom/android/dx/rop/code/BasicBlock;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "betaLabel":I
    .end local v3    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .end local v4    # "preds":Lcom/android/dx/util/IntList;
    .end local v5    # "szPreds":I
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static compareInsns(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z
    .locals 2
    .param p0, "a"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p1, "b"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 124
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/InsnList;->contentEquals(Lcom/android/dx/rop/code/InsnList;)Z

    move-result v0

    return v0
.end method

.method private replaceSucc(Lcom/android/dx/rop/code/BasicBlock;II)V
    .locals 5
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "oldLabel"    # I
    .param p3, "newLabel"    # I

    .line 160
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 163
    .local v0, "newSuccessors":Lcom/android/dx/util/IntList;
    invoke-virtual {v0, p2}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/android/dx/util/IntList;->set(II)V

    .line 164
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v1

    .line 166
    .local v1, "newPrimarySuccessor":I
    if-ne v1, p2, :cond_0

    .line 167
    move v1, p3

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 172
    new-instance v2, Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v3

    .line 173
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 175
    .local v2, "newBB":Lcom/android/dx/rop/code/BasicBlock;
    iget-object v3, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    .line 176
    return-void
.end method


# virtual methods
.method public process()Lcom/android/dx/rop/code/RopMethod;
    .locals 15

    .line 56
    iget-object v0, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 58
    .local v0, "szBlocks":I
    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 61
    .local v1, "toDelete":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "bindex":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 62
    iget-object v3, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    .line 64
    .local v3, "b":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    goto :goto_4

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v4

    .line 72
    .local v4, "preds":Lcom/android/dx/util/IntList;
    invoke-virtual {v4}, Lcom/android/dx/util/IntList;->size()I

    move-result v5

    .line 73
    .local v5, "szPreds":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 74
    invoke-virtual {v4, v6}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 76
    .local v7, "iLabel":I
    iget-object v8, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v8, v7}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v8

    .line 78
    .local v8, "iBlock":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 79
    invoke-virtual {v8}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/util/IntList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_4

    .line 80
    invoke-virtual {v8}, Lcom/android/dx/rop/code/BasicBlock;->getFirstInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v9

    const/16 v11, 0x37

    if-ne v9, v11, :cond_1

    .line 82
    goto :goto_3

    .line 85
    :cond_1
    new-instance v9, Lcom/android/dx/util/IntList;

    invoke-direct {v9}, Lcom/android/dx/util/IntList;-><init>()V

    .line 88
    .local v9, "toCombine":Lcom/android/dx/util/IntList;
    add-int/lit8 v11, v6, 0x1

    .local v11, "j":I
    :goto_2
    if-ge v11, v5, :cond_3

    .line 89
    invoke-virtual {v4, v11}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v12

    .line 90
    .local v12, "jLabel":I
    iget-object v13, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v13, v12}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v13

    .line 92
    .local v13, "jBlock":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v13}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/dx/util/IntList;->size()I

    move-result v14

    if-ne v14, v10, :cond_2

    .line 93
    invoke-static {v8, v13}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->compareInsns(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 95
    invoke-virtual {v9, v12}, Lcom/android/dx/util/IntList;->add(I)V

    .line 96
    invoke-virtual {v1, v12}, Ljava/util/BitSet;->set(I)V

    .line 88
    .end local v12    # "jLabel":I
    .end local v13    # "jBlock":Lcom/android/dx/rop/code/BasicBlock;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 100
    .end local v11    # "j":I
    :cond_3
    invoke-direct {p0, v7, v9}, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->combineBlocks(ILcom/android/dx/util/IntList;)V

    .line 73
    .end local v7    # "iLabel":I
    .end local v8    # "iBlock":Lcom/android/dx/rop/code/BasicBlock;
    .end local v9    # "toCombine":Lcom/android/dx/util/IntList;
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 61
    .end local v3    # "b":Lcom/android/dx/rop/code/BasicBlock;
    .end local v4    # "preds":Lcom/android/dx/util/IntList;
    .end local v5    # "szPreds":I
    .end local v6    # "i":I
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 104
    .end local v2    # "bindex":I
    :cond_6
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_5
    if-ltz v2, :cond_8

    .line 105
    iget-object v3, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 106
    iget-object v3, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    .line 104
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 110
    .end local v2    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlockList;->shrinkToFit()V

    .line 111
    iget-object v2, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlockList;->setImmutable()V

    .line 113
    new-instance v2, Lcom/android/dx/rop/code/RopMethod;

    iget-object v3, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->newBlocks:Lcom/android/dx/rop/code/BasicBlockList;

    iget-object v4, p0, Lcom/android/dx/ssa/back/IdenticalBlockCombiner;->ropMethod:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    return-object v2
.end method
