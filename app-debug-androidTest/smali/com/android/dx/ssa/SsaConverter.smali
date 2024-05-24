.class public Lcom/android/dx/ssa/SsaConverter;
.super Ljava/lang/Object;
.source "SsaConverter.java"


# static fields
.field public static final DEBUG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToSsaMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .locals 3
    .param p0, "rmeth"    # Lcom/android/dx/rop/code/RopMethod;
    .param p1, "paramWidth"    # I
    .param p2, "isStatic"    # Z

    .line 44
    nop

    .line 45
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 47
    .local v0, "result":Lcom/android/dx/ssa/SsaMethod;
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    .line 49
    invoke-static {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object v1

    .line 51
    .local v1, "localInfo":Lcom/android/dx/ssa/LocalVariableInfo;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    .line 52
    new-instance v2, Lcom/android/dx/ssa/SsaRenamer;

    invoke-direct {v2, v0}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaRenamer;->run()V

    .line 58
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeExitBlock()V

    .line 60
    return-object v0
.end method

.method private static edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 0
    .param p0, "result"    # Lcom/android/dx/ssa/SsaMethod;

    .line 134
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitPredecessors(Lcom/android/dx/ssa/SsaMethod;)V

    .line 135
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitMoveExceptionsAndResults(Lcom/android/dx/ssa/SsaMethod;)V

    .line 136
    invoke-static {p0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplitSuccessors(Lcom/android/dx/ssa/SsaMethod;)V

    .line 137
    return-void
.end method

.method private static edgeSplitMoveExceptionsAndResults(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 11
    .param p0, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 187
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 200
    .local v3, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->isExitBlock()Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-le v4, v2, :cond_1

    .line 202
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaInsn;->isMoveException()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    .line 206
    .local v4, "preds":Ljava/util/BitSet;
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_0

    .line 208
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 209
    .local v7, "predecessor":Lcom/android/dx/ssa/SsaBasicBlock;
    nop

    .line 210
    invoke-virtual {v7, v3}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v8

    .line 216
    .local v8, "zNode":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->clone()Lcom/android/dx/ssa/SsaInsn;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 207
    .end local v7    # "predecessor":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v8    # "zNode":Lcom/android/dx/ssa/SsaBasicBlock;
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_1

    .line 220
    .end local v6    # "j":I
    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    .end local v3    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v4    # "preds":Ljava/util/BitSet;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static edgeSplitPredecessors(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 4
    .param p0, "result"    # Lcom/android/dx/ssa/SsaMethod;

    .line 146
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    .local v0, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 154
    .local v2, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-static {v2}, Lcom/android/dx/ssa/SsaConverter;->nodeNeedsUniquePredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/android/dx/ssa/SsaBasicBlock;

    .line 152
    .end local v2    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static edgeSplitSuccessors(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 7
    .param p0, "result"    # Lcom/android/dx/ssa/SsaMethod;

    .line 232
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 238
    .local v0, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 239
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 242
    .local v2, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    .line 243
    .local v3, "successors":Ljava/util/BitSet;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    .line 244
    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 246
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 248
    .local v5, "succ":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-static {v2, v5}, Lcom/android/dx/ssa/SsaConverter;->needsNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    invoke-virtual {v2, v5}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    .line 244
    .end local v5    # "succ":Lcom/android/dx/ssa/SsaBasicBlock;
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    goto :goto_1

    .line 238
    .end local v2    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v3    # "successors":Ljava/util/BitSet;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static needsNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)Z
    .locals 4
    .param p0, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;
    .param p1, "succ"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 270
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, "insns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 279
    .local v1, "lastInsn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-le v3, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 280
    return v2

    .line 283
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-nez v3, :cond_1

    .line 284
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-le v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 283
    :goto_0
    return v2
.end method

.method private static nodeNeedsUniquePredecessor(Lcom/android/dx/ssa/SsaBasicBlock;)Z
    .locals 3
    .param p0, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 171
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 172
    .local v0, "countPredecessors":I
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 174
    .local v1, "countSuccessors":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V
    .locals 19
    .param p0, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p1, "localInfo"    # Lcom/android/dx/ssa/LocalVariableInfo;
    .param p2, "threshold"    # I

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    .local v0, "ssaBlocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 307
    .local v1, "blockCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v2

    sub-int v2, v2, p2

    .line 309
    .local v2, "regCount":I
    new-instance v3, Lcom/android/dx/ssa/DomFront;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Lcom/android/dx/ssa/DomFront;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 310
    .local v3, "df":Lcom/android/dx/ssa/DomFront;
    invoke-virtual {v3}, Lcom/android/dx/ssa/DomFront;->run()[Lcom/android/dx/ssa/DomFront$DomInfo;

    move-result-object v5

    .line 313
    .local v5, "domInfos":[Lcom/android/dx/ssa/DomFront$DomInfo;
    new-array v6, v2, [Ljava/util/BitSet;

    .line 316
    .local v6, "defsites":[Ljava/util/BitSet;
    new-array v7, v2, [Ljava/util/BitSet;

    .line 318
    .local v7, "phisites":[Ljava/util/BitSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_0

    .line 319
    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v9, v6, v8

    .line 320
    new-instance v9, Ljava/util/BitSet;

    invoke-direct {v9, v1}, Ljava/util/BitSet;-><init>(I)V

    aput-object v9, v7, v8

    .line 318
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 327
    .end local v8    # "i":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "bi":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "s":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 328
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 330
    .local v10, "b":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/dx/ssa/SsaInsn;

    .line 331
    .local v12, "insn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 333
    .local v13, "rs":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v14

    sub-int v14, v14, p2

    if-ltz v14, :cond_1

    .line 334
    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v14

    sub-int v14, v14, p2

    aget-object v14, v6, v14

    invoke-virtual {v14, v8}, Ljava/util/BitSet;->set(I)V

    .line 336
    .end local v12    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v13    # "rs":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    goto :goto_2

    .line 327
    .end local v10    # "b":Lcom/android/dx/ssa/SsaBasicBlock;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 356
    .end local v8    # "bi":I
    .end local v9    # "s":I
    :cond_3
    const/4 v8, 0x0

    .local v8, "reg":I
    move v9, v2

    .restart local v9    # "s":I
    :goto_3
    if-ge v8, v9, :cond_9

    .line 361
    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/BitSet;

    check-cast v10, Ljava/util/BitSet;

    .line 363
    .local v10, "worklist":Ljava/util/BitSet;
    :goto_4
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v11

    move v12, v11

    .local v12, "workBlockIndex":I
    if-ltz v11, :cond_8

    .line 364
    invoke-virtual {v10, v12}, Ljava/util/BitSet;->clear(I)V

    .line 365
    aget-object v11, v5, v12

    iget-object v11, v11, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    .line 366
    invoke-interface {v11}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object v11

    .line 368
    .local v11, "dfIterator":Lcom/android/dx/util/IntIterator;
    :goto_5
    invoke-interface {v11}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 369
    invoke-interface {v11}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v13

    .line 371
    .local v13, "dfBlockIndex":I
    aget-object v14, v7, v8

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_5

    .line 372
    aget-object v14, v7, v8

    invoke-virtual {v14, v13}, Ljava/util/BitSet;->set(I)V

    .line 374
    add-int v14, v8, p2

    .line 375
    .local v14, "tReg":I
    nop

    .line 376
    move-object/from16 v15, p1

    move/from16 v16, v1

    .end local v1    # "blockCount":I
    .local v16, "blockCount":I
    invoke-virtual {v15, v13}, Lcom/android/dx/ssa/LocalVariableInfo;->getStarts(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 378
    .local v1, "rs":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v1, :cond_4

    .line 379
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v2

    .end local v2    # "regCount":I
    .local v18, "regCount":I
    move-object/from16 v2, v17

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v2, v14}, Lcom/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(I)V

    goto :goto_6

    .line 381
    .end local v18    # "regCount":I
    .restart local v2    # "regCount":I
    :cond_4
    move/from16 v18, v2

    .end local v2    # "regCount":I
    .restart local v18    # "regCount":I
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v2, v1}, Lcom/android/dx/ssa/SsaBasicBlock;->addPhiInsnForReg(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 384
    :goto_6
    aget-object v2, v6, v8

    invoke-virtual {v2, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 385
    invoke-virtual {v10, v13}, Ljava/util/BitSet;->set(I)V

    goto :goto_7

    .line 371
    .end local v14    # "tReg":I
    .end local v16    # "blockCount":I
    .end local v18    # "regCount":I
    .local v1, "blockCount":I
    .restart local v2    # "regCount":I
    :cond_5
    move-object/from16 v15, p1

    move/from16 v16, v1

    move/from16 v18, v2

    .line 388
    .end local v1    # "blockCount":I
    .end local v2    # "regCount":I
    .end local v13    # "dfBlockIndex":I
    .restart local v16    # "blockCount":I
    .restart local v18    # "regCount":I
    :cond_6
    :goto_7
    move/from16 v1, v16

    move/from16 v2, v18

    goto :goto_5

    .line 368
    .end local v16    # "blockCount":I
    .end local v18    # "regCount":I
    .restart local v1    # "blockCount":I
    .restart local v2    # "regCount":I
    :cond_7
    move-object/from16 v15, p1

    move/from16 v16, v1

    move/from16 v18, v2

    .line 389
    .end local v1    # "blockCount":I
    .end local v2    # "regCount":I
    .end local v11    # "dfIterator":Lcom/android/dx/util/IntIterator;
    .restart local v16    # "blockCount":I
    .restart local v18    # "regCount":I
    goto :goto_4

    .line 363
    .end local v16    # "blockCount":I
    .end local v18    # "regCount":I
    .restart local v1    # "blockCount":I
    .restart local v2    # "regCount":I
    :cond_8
    move-object/from16 v15, p1

    move/from16 v16, v1

    move/from16 v18, v2

    .line 356
    .end local v1    # "blockCount":I
    .end local v2    # "regCount":I
    .end local v12    # "workBlockIndex":I
    .restart local v16    # "blockCount":I
    .restart local v18    # "regCount":I
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 402
    .end local v8    # "reg":I
    .end local v9    # "s":I
    .end local v10    # "worklist":Ljava/util/BitSet;
    .end local v16    # "blockCount":I
    .end local v18    # "regCount":I
    .restart local v1    # "blockCount":I
    .restart local v2    # "regCount":I
    :cond_9
    return-void
.end method

.method public static testEdgeSplit(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .locals 1
    .param p0, "rmeth"    # Lcom/android/dx/rop/code/RopMethod;
    .param p1, "paramWidth"    # I
    .param p2, "isStatic"    # Z

    .line 89
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 91
    .local v0, "result":Lcom/android/dx/ssa/SsaMethod;
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    .line 92
    return-object v0
.end method

.method public static testPhiPlacement(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .locals 3
    .param p0, "rmeth"    # Lcom/android/dx/rop/code/RopMethod;
    .param p1, "paramWidth"    # I
    .param p2, "isStatic"    # Z

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 111
    .local v0, "result":Lcom/android/dx/ssa/SsaMethod;
    invoke-static {v0}, Lcom/android/dx/ssa/SsaConverter;->edgeSplit(Lcom/android/dx/ssa/SsaMethod;)V

    .line 113
    invoke-static {v0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object v1

    .line 115
    .local v1, "localInfo":Lcom/android/dx/ssa/LocalVariableInfo;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    .line 116
    return-object v0
.end method

.method public static updateSsaMethod(Lcom/android/dx/ssa/SsaMethod;I)V
    .locals 2
    .param p0, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p1, "threshold"    # I

    .line 71
    invoke-static {p0}, Lcom/android/dx/ssa/LocalVariableExtractor;->extract(Lcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/LocalVariableInfo;

    move-result-object v0

    .line 72
    .local v0, "localInfo":Lcom/android/dx/ssa/LocalVariableInfo;
    invoke-static {p0, v0, p1}, Lcom/android/dx/ssa/SsaConverter;->placePhiFunctions(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/LocalVariableInfo;I)V

    .line 73
    new-instance v1, Lcom/android/dx/ssa/SsaRenamer;

    invoke-direct {v1, p0, p1}, Lcom/android/dx/ssa/SsaRenamer;-><init>(Lcom/android/dx/ssa/SsaMethod;I)V

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaRenamer;->run()V

    .line 74
    return-void
.end method
