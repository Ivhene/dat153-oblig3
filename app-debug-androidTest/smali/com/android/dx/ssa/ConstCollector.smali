.class public Lcom/android/dx/ssa/ConstCollector;
.super Ljava/lang/Object;
.source "ConstCollector.java"


# static fields
.field private static final COLLECT_ONE_LOCAL:Z = false

.field private static final COLLECT_STRINGS:Z = false

.field private static final MAX_COLLECTED_CONSTANTS:I = 0x5


# instance fields
.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 0
    .param p1, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/ConstCollector;)Lcom/android/dx/ssa/SsaMethod;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/ConstCollector;

    .line 46
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method private fixLocalAssignment(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 9
    .param p1, "origReg"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "newReg"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 281
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 282
    .local v1, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 283
    .local v2, "localAssignment":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v2, :cond_0

    .line 284
    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    if-nez v3, :cond_1

    .line 292
    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v3

    .line 298
    .local v3, "local":Lcom/android/dx/rop/code/LocalItem;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/android/dx/rop/code/LocalItem;)V

    .line 301
    invoke-virtual {p2, v3}, Lcom/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 303
    new-instance v5, Lcom/android/dx/rop/code/PlainInsn;

    .line 305
    invoke-static {p2}, Lcom/android/dx/rop/code/Rops;->opMarkLocal(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v6

    sget-object v7, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    .line 307
    invoke-static {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    invoke-direct {v5, v6, v7, v4, v8}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 308
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    .line 304
    invoke-static {v5, v4}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v4

    .line 310
    .local v4, "newInsn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v5

    .line 312
    .local v5, "insns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    .end local v1    # "use":Lcom/android/dx/ssa/SsaInsn;
    .end local v2    # "localAssignment":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v3    # "local":Lcom/android/dx/rop/code/LocalItem;
    .end local v4    # "newInsn":Lcom/android/dx/ssa/SsaInsn;
    .end local v5    # "insns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    goto :goto_0

    .line 314
    :cond_2
    return-void
.end method

.method private getConstsSortedByCountUse()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/TypedConstant;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 160
    .local v0, "regSz":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v1, "countUses":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/dx/rop/cst/TypedConstant;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 171
    .local v2, "usedByLocal":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/rop/cst/TypedConstant;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_7

    .line 172
    iget-object v5, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v5, v3}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v5

    .line 174
    .local v5, "insn":Lcom/android/dx/ssa/SsaInsn;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 176
    :cond_0
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 177
    .local v6, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v7

    .line 179
    .local v7, "typeBearer":Lcom/android/dx/rop/type/TypeBearer;
    invoke-interface {v7}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    move-object v8, v7

    check-cast v8, Lcom/android/dx/rop/cst/TypedConstant;

    .line 184
    .local v8, "cst":Lcom/android/dx/rop/cst/TypedConstant;
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v9

    const/16 v10, 0x38

    if-ne v9, v10, :cond_2

    .line 185
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v9

    .line 187
    .local v9, "pred":I
    iget-object v10, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v10

    .line 188
    .local v10, "predInsns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/android/dx/ssa/SsaInsn;

    .line 191
    .end local v9    # "pred":I
    .end local v10    # "predInsns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    :cond_2
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaInsn;->canThrow()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 196
    instance-of v4, v8, Lcom/android/dx/rop/cst/CstString;

    .line 197
    goto :goto_1

    .line 212
    :cond_3
    iget-object v9, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v9, v6}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 214
    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 226
    .local v9, "has":Ljava/lang/Integer;
    if-nez v9, :cond_5

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 229
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v5    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v6    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v7    # "typeBearer":Lcom/android/dx/rop/type/TypeBearer;
    .end local v8    # "cst":Lcom/android/dx/rop/cst/TypedConstant;
    .end local v9    # "has":Ljava/lang/Integer;
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 234
    .end local v3    # "i":I
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v3, "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 236
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/rop/cst/TypedConstant;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v4, :cond_8

    .line 237
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/rop/cst/TypedConstant;Ljava/lang/Integer;>;"
    :cond_8
    goto :goto_2

    .line 242
    :cond_9
    new-instance v4, Lcom/android/dx/ssa/ConstCollector$1;

    invoke-direct {v4, p0, v1}, Lcom/android/dx/ssa/ConstCollector$1;-><init>(Lcom/android/dx/ssa/ConstCollector;Ljava/util/HashMap;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    return-object v3
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1
    .param p0, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 74
    new-instance v0, Lcom/android/dx/ssa/ConstCollector;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/ConstCollector;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 75
    .local v0, "cc":Lcom/android/dx/ssa/ConstCollector;
    invoke-direct {v0}, Lcom/android/dx/ssa/ConstCollector;->run()V

    .line 76
    return-void
.end method

.method private run()V
    .locals 20

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    .line 93
    .local v1, "regSz":I
    nop

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/ssa/ConstCollector;->getConstsSortedByCountUse()Ljava/util/ArrayList;

    move-result-object v2

    .line 96
    .local v2, "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 98
    .local v3, "toCollect":I
    iget-object v4, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    .line 101
    .local v4, "start":Lcom/android/dx/ssa/SsaBasicBlock;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 104
    .local v5, "newRegs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/code/RegisterSpec;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 105
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/cst/TypedConstant;

    .line 106
    .local v7, "cst":Lcom/android/dx/rop/cst/TypedConstant;
    iget-object v8, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 107
    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v8

    invoke-static {v8, v7}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 109
    .local v14, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v7}, Lcom/android/dx/rop/code/Rops;->opConst(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v15

    .line 111
    .local v15, "constRop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v15}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 112
    new-instance v13, Lcom/android/dx/rop/code/PlainCstInsn;

    .line 113
    invoke-static {v7}, Lcom/android/dx/rop/code/Rops;->opConst(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    sget-object v10, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    sget-object v12, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    move-object v8, v13

    move-object v11, v14

    move-object/from16 v16, v2

    move-object v2, v13

    .end local v2    # "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    .local v16, "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 112
    invoke-virtual {v4, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/android/dx/rop/code/Insn;)V

    move/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_1

    .line 118
    .end local v16    # "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    .restart local v2    # "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    :cond_0
    move-object/from16 v16, v2

    .end local v2    # "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    .restart local v16    # "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    iget-object v2, v0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 119
    .local v2, "entryBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    nop

    .line 120
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v13

    .line 123
    .local v13, "successorBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    nop

    .line 124
    invoke-virtual {v2, v13}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v12

    .line 126
    .local v12, "constBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    new-instance v11, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v10, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    sget-object v17, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    sget-object v18, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    move-object v8, v11

    move-object v9, v15

    move-object/from16 v19, v2

    move-object v2, v11

    .end local v2    # "entryBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v19, "entryBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    move-object/from16 v11, v17

    move/from16 v17, v3

    move-object v3, v12

    .end local v12    # "constBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v3, "constBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v17, "toCollect":I
    move-object/from16 v12, v18

    move-object/from16 v18, v4

    move-object v4, v13

    .end local v13    # "successorBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v4, "successorBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v18, "start":Lcom/android/dx/ssa/SsaBasicBlock;
    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v3, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/android/dx/rop/code/Insn;)V

    .line 133
    nop

    .line 134
    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 135
    .local v2, "resultBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    new-instance v8, Lcom/android/dx/rop/code/PlainInsn;

    .line 137
    invoke-virtual {v14}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v9

    invoke-static {v9}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    sget-object v10, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    sget-object v11, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v8, v9, v10, v14, v11}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 141
    .local v8, "insn":Lcom/android/dx/rop/code/PlainInsn;
    invoke-virtual {v2, v8}, Lcom/android/dx/ssa/SsaBasicBlock;->addInsnToHead(Lcom/android/dx/rop/code/Insn;)V

    .line 144
    .end local v2    # "resultBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v3    # "constBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v4    # "successorBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v8    # "insn":Lcom/android/dx/rop/code/PlainInsn;
    .end local v19    # "entryBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    :goto_1
    invoke-virtual {v5, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v7    # "cst":Lcom/android/dx/rop/cst/TypedConstant;
    .end local v14    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v15    # "constRop":Lcom/android/dx/rop/code/Rop;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_0

    .line 147
    .end local v6    # "i":I
    .end local v16    # "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    .end local v17    # "toCollect":I
    .end local v18    # "start":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v2, "constantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/TypedConstant;>;"
    .local v3, "toCollect":I
    .local v4, "start":Lcom/android/dx/ssa/SsaBasicBlock;
    :cond_1
    invoke-direct {v0, v5, v1}, Lcom/android/dx/ssa/ConstCollector;->updateConstUses(Ljava/util/HashMap;I)V

    .line 148
    return-void
.end method

.method private updateConstUses(Ljava/util/HashMap;I)V
    .locals 13
    .param p2, "origRegCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/dx/rop/cst/TypedConstant;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;I)V"
        }
    .end annotation

    .line 331
    .local p1, "newRegs":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/dx/rop/cst/TypedConstant;Lcom/android/dx/rop/code/RegisterSpec;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 334
    .local v0, "usedByLocal":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/rop/cst/TypedConstant;>;"
    iget-object v1, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v1

    .line 336
    .local v1, "useList":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_6

    .line 337
    iget-object v3, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v3

    .line 339
    .local v3, "insn":Lcom/android/dx/ssa/SsaInsn;
    if-nez v3, :cond_0

    .line 340
    goto :goto_2

    .line 343
    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 344
    .local v4, "origReg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v5

    .line 346
    .local v5, "typeBearer":Lcom/android/dx/rop/type/TypeBearer;
    invoke-interface {v5}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 348
    :cond_1
    move-object v6, v5

    check-cast v6, Lcom/android/dx/rop/cst/TypedConstant;

    .line 349
    .local v6, "cst":Lcom/android/dx/rop/cst/TypedConstant;
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/code/RegisterSpec;

    .line 351
    .local v7, "newReg":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v7, :cond_2

    .line 352
    goto :goto_2

    .line 355
    :cond_2
    iget-object v8, p0, Lcom/android/dx/ssa/ConstCollector;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v8, v4}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 357
    goto :goto_2

    .line 374
    :cond_3
    new-instance v8, Lcom/android/dx/ssa/ConstCollector$2;

    invoke-direct {v8, p0, v4, v7}, Lcom/android/dx/ssa/ConstCollector$2;-><init>(Lcom/android/dx/ssa/ConstCollector;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 391
    .local v8, "mapper":Lcom/android/dx/ssa/RegisterMapper;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dx/ssa/SsaInsn;

    .line 392
    .local v10, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->canThrow()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 393
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 394
    goto :goto_1

    .line 396
    :cond_4
    invoke-virtual {v10, v8}, Lcom/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 397
    .end local v10    # "use":Lcom/android/dx/ssa/SsaInsn;
    goto :goto_1

    .line 336
    .end local v3    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v4    # "origReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v5    # "typeBearer":Lcom/android/dx/rop/type/TypeBearer;
    .end local v6    # "cst":Lcom/android/dx/rop/cst/TypedConstant;
    .end local v7    # "newReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v8    # "mapper":Lcom/android/dx/ssa/RegisterMapper;
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v2    # "i":I
    :cond_6
    return-void
.end method
