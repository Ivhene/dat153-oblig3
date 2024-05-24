.class public final Lcom/android/dx/ssa/SsaMethod;
.super Ljava/lang/Object;
.source "SsaMethod.java"


# instance fields
.field private backMode:Z

.field private blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private borrowedSpareRegisters:I

.field private definitionList:[Lcom/android/dx/ssa/SsaInsn;

.field private entryBlockIndex:I

.field private exitBlockIndex:I

.field private final isStatic:Z

.field private maxLabel:I

.field private final paramWidth:I

.field private registerCount:I

.field private spareRegisterBase:I

.field private unmodifiableUseList:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private useList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/code/RopMethod;IZ)V
    .locals 1
    .param p1, "ropMethod"    # Lcom/android/dx/rop/code/RopMethod;
    .param p2, "paramWidth"    # I
    .param p3, "isStatic"    # Z

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p2, p0, Lcom/android/dx/ssa/SsaMethod;->paramWidth:I

    .line 120
    iput-boolean p3, p0, Lcom/android/dx/ssa/SsaMethod;->isStatic:Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    .line 122
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    .line 123
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    .line 124
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaMethod;)[Lcom/android/dx/ssa/SsaInsn;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaMethod;

    .line 40
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/SsaMethod;)[Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaMethod;

    .line 40
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static bitSetFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Ljava/util/BitSet;
    .locals 4
    .param p0, "blocks"    # Lcom/android/dx/rop/code/BasicBlockList;
    .param p1, "labelList"    # Lcom/android/dx/util/IntList;

    .line 137
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 139
    .local v0, "result":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .local v2, "sz":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 140
    invoke-virtual {p1, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    .end local v2    # "sz":I
    :cond_0
    return-object v0
.end method

.method private buildUseList()V
    .locals 3

    .line 421
    iget-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    if-nez v0, :cond_2

    .line 425
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    if-ge v0, v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/android/dx/ssa/SsaMethod$2;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaMethod$2;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 461
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    .line 463
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    if-ge v0, v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 422
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertRopToSsaBlocks(Lcom/android/dx/rop/code/RopMethod;)V
    .locals 5
    .param p1, "rmeth"    # Lcom/android/dx/rop/code/RopMethod;

    .line 167
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 168
    .local v0, "ropBlocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    .line 170
    .local v1, "sz":I
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    .line 172
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 173
    invoke-static {p1, v2, p0}, Lcom/android/dx/ssa/SsaBasicBlock;->newFromRop(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/ssa/SsaMethod;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    .line 174
    .local v3, "sbb":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v4, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v3    # "sbb":Lcom/android/dx/ssa/SsaBasicBlock;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v2

    .line 181
    .local v2, "origEntryBlockIndex":I
    iget-object v3, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewPredecessor()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    .line 184
    .local v3, "entryBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    .line 185
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    .line 186
    return-void
.end method

.method private static getGoto(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;
    .locals 6
    .param p0, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 225
    new-instance v0, Lcom/android/dx/ssa/NormalSsaInsn;

    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v2, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v3, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-direct {v0, v1, p0}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    return-object v0
.end method

.method public static indexListFromLabelList(Lcom/android/dx/rop/code/BasicBlockList;Lcom/android/dx/util/IntList;)Lcom/android/dx/util/IntList;
    .locals 4
    .param p0, "ropBlocks"    # Lcom/android/dx/rop/code/BasicBlockList;
    .param p1, "labelList"    # Lcom/android/dx/util/IntList;

    .line 157
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 159
    .local v0, "result":Lcom/android/dx/util/IntList;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .local v2, "sz":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 160
    invoke-virtual {p1, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/dx/util/IntList;->add(I)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    .end local v2    # "sz":I
    :cond_0
    return-object v0
.end method

.method public static newFromRopMethod(Lcom/android/dx/rop/code/RopMethod;IZ)Lcom/android/dx/ssa/SsaMethod;
    .locals 1
    .param p0, "ropMethod"    # Lcom/android/dx/rop/code/RopMethod;
    .param p1, "paramWidth"    # I
    .param p2, "isStatic"    # Z

    .line 101
    new-instance v0, Lcom/android/dx/ssa/SsaMethod;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;-><init>(Lcom/android/dx/rop/code/RopMethod;IZ)V

    .line 103
    .local v0, "result":Lcom/android/dx/ssa/SsaMethod;
    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaMethod;->convertRopToSsaBlocks(Lcom/android/dx/rop/code/RopMethod;)V

    .line 105
    return-object v0
.end method

.method private removeFromUseList(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "oldSources"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 528
    if-nez p2, :cond_0

    .line 529
    return-void

    .line 532
    :cond_0
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 533
    .local v0, "szNew":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 534
    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "use not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 538
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public blockIndexToRopLabel(I)I
    .locals 1
    .param p1, "bi"    # I

    .line 281
    if-gez p1, :cond_0

    .line 282
    const/4 v0, -0x1

    return v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v0

    return v0
.end method

.method public borrowSpareRegister(I)I
    .locals 3
    .param p1, "category"    # I

    .line 319
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    add-int/2addr v0, v1

    .line 321
    .local v0, "result":I
    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    .line 322
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    add-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    .line 324
    return v0
.end method

.method public computeReachability()Ljava/util/BitSet;
    .locals 6

    .line 347
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    .local v0, "size":I
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 349
    .local v1, "reachableUnvisited":Ljava/util/BitSet;
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 351
    .local v2, "reachableVisited":Ljava/util/BitSet;
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 354
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 355
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 356
    iget-object v3, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 357
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    goto :goto_0

    .line 360
    :cond_0
    return-object v2
.end method

.method public deleteInsns(Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .line 806
    .local p1, "deletedInsns":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 807
    .local v1, "deletedInsn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 808
    .local v2, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v3

    .line 810
    .local v3, "insns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 811
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaInsn;

    .line 813
    .local v6, "insn":Lcom/android/dx/ssa/SsaInsn;
    if-ne v1, v6, :cond_0

    .line 814
    invoke-virtual {p0, v6}, Lcom/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V

    .line 815
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 816
    goto :goto_2

    .line 810
    .end local v6    # "insn":Lcom/android/dx/ssa/SsaInsn;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 822
    .end local v4    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 823
    .local v4, "insnsSz":I
    const/4 v6, 0x0

    if-nez v4, :cond_2

    move-object v7, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/ssa/SsaInsn;

    .line 825
    .local v7, "lastInsn":Lcom/android/dx/ssa/SsaInsn;
    :goto_3
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v8

    if-eq v2, v8, :cond_5

    if-eqz v4, :cond_3

    .line 826
    invoke-virtual {v7}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 827
    invoke-virtual {v7}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v8

    .line 828
    invoke-virtual {v8}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v8

    if-ne v8, v5, :cond_5

    .line 831
    :cond_3
    new-instance v5, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v8, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v9, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    sget-object v10, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v5, v8, v9, v6, v10}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 833
    .local v5, "gotoInsn":Lcom/android/dx/rop/code/Insn;
    invoke-static {v5, v2}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v6

    .line 837
    .local v6, "succs":Ljava/util/BitSet;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v8

    .local v8, "i":I
    :goto_4
    if-ltz v8, :cond_5

    .line 839
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 840
    invoke-virtual {v2, v8}, Lcom/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    .line 838
    :cond_4
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v8

    goto :goto_4

    .line 844
    .end local v1    # "deletedInsn":Lcom/android/dx/ssa/SsaInsn;
    .end local v2    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v3    # "insns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v4    # "insnsSz":I
    .end local v5    # "gotoInsn":Lcom/android/dx/rop/code/Insn;
    .end local v6    # "succs":Ljava/util/BitSet;
    .end local v7    # "lastInsn":Lcom/android/dx/ssa/SsaInsn;
    .end local v8    # "i":I
    :cond_5
    goto/16 :goto_0

    .line 845
    :cond_6
    return-void
.end method

.method public forEachBlockDepthFirst(ZLcom/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .locals 8
    .param p1, "reverse"    # Z
    .param p2, "v"    # Lcom/android/dx/ssa/SsaBasicBlock$Visitor;

    .line 738
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 741
    .local v0, "visited":Ljava/util/BitSet;
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 743
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    .line 745
    .local v2, "rootBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    :goto_0
    if-nez v2, :cond_1

    .line 747
    return-void

    .line 750
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 753
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 754
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 755
    .local v3, "cur":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 757
    .local v4, "parent":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 758
    if-eqz p1, :cond_2

    .line 759
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v5

    .line 760
    .local v5, "children":Ljava/util/BitSet;
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_3

    .line 762
    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v7, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 761
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_3

    .line 765
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 766
    invoke-interface {p2, v3, v4}, Lcom/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 768
    .end local v3    # "cur":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v4    # "parent":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v5    # "children":Ljava/util/BitSet;
    :cond_4
    goto :goto_1

    .line 769
    :cond_5
    return-void
.end method

.method public forEachBlockDepthFirstDom(Lcom/android/dx/ssa/SsaBasicBlock$Visitor;)V
    .locals 6
    .param p1, "v"    # Lcom/android/dx/ssa/SsaBasicBlock$Visitor;

    .line 779
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 780
    .local v0, "visited":Ljava/util/BitSet;
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 782
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 784
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 785
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 786
    .local v2, "cur":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 788
    .local v3, "curDomChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 790
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_0

    .line 791
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 792
    .local v5, "child":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v1, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v5    # "child":Lcom/android/dx/ssa/SsaBasicBlock;
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 794
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 795
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4}, Lcom/android/dx/ssa/SsaBasicBlock$Visitor;->visitBlock(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 797
    .end local v2    # "cur":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v3    # "curDomChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    :cond_1
    goto :goto_0

    .line 798
    :cond_2
    return-void
.end method

.method public forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V
    .locals 2
    .param p1, "visitor"    # Lcom/android/dx/ssa/SsaInsn$Visitor;

    .line 710
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 711
    .local v1, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v1, p1}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 712
    .end local v1    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    goto :goto_0

    .line 713
    :cond_0
    return-void
.end method

.method public forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V
    .locals 2
    .param p1, "v"    # Lcom/android/dx/ssa/PhiInsn$Visitor;

    .line 721
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 722
    .local v1, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v1, p1}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V

    .line 723
    .end local v1    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    goto :goto_0

    .line 724
    :cond_0
    return-void
.end method

.method public getBlocks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;
    .locals 2
    .param p1, "reg"    # I

    .line 386
    iget-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    if-eqz v0, :cond_0

    .line 391
    aget-object v0, v0, p1

    return-object v0

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/dx/ssa/SsaInsn;

    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    .line 396
    new-instance v0, Lcom/android/dx/ssa/SsaMethod$1;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaMethod$1;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 414
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    aget-object v0, v0, p1

    return-object v0

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No def list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    return-object v0
.end method

.method public getEntryBlockIndex()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->entryBlockIndex:I

    return v0
.end method

.method public getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 2

    .line 273
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    :goto_0
    return-object v0
.end method

.method public getExitBlockIndex()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    return v0
.end method

.method public getParamWidth()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->paramWidth:I

    return v0
.end method

.method public getRegCount()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    return v0
.end method

.method public getUseListCopy()[Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaMethod;->buildUseList()V

    .line 639
    :cond_0
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    check-cast v0, [Ljava/util/ArrayList;

    .line 642
    .local v0, "useListCopy":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    if-ge v1, v2, :cond_1

    .line 643
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v0, v1

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getUseListForRegister(I)Ljava/util/List;
    .locals 1
    .param p1, "reg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaMethod;->buildUseList()V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 8
    .param p1, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 658
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 660
    .local v0, "defn":Lcom/android/dx/ssa/SsaInsn;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 662
    return v1

    .line 666
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 669
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaInsn;

    .line 670
    .local v4, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v5

    .line 672
    .local v5, "insn":Lcom/android/dx/rop/code/Insn;
    if-eqz v5, :cond_2

    .line 673
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v6

    const/16 v7, 0x36

    if-ne v6, v7, :cond_2

    .line 674
    return v3

    .line 676
    .end local v4    # "use":Lcom/android/dx/ssa/SsaInsn;
    .end local v5    # "insn":Lcom/android/dx/rop/code/Insn;
    :cond_2
    goto :goto_0

    .line 678
    :cond_3
    return v1
.end method

.method public isStatic()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->isStatic:Z

    return v0
.end method

.method makeExitBlock()V
    .locals 4

    .line 195
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    if-gez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    .line 200
    new-instance v0, Lcom/android/dx/ssa/SsaBasicBlock;

    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    iget v2, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    invoke-direct {v0, v1, v2, p0}, Lcom/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/android/dx/ssa/SsaMethod;)V

    .line 203
    .local v0, "exitBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 206
    .local v2, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v2, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->exitBlockFixup(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 207
    .end local v2    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->exitBlockIndex:I

    .line 213
    iget v1, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    .line 215
    :cond_1
    return-void

    .line 196
    .end local v0    # "exitBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeNewGotoBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    .local v0, "newIndex":I
    new-instance v1, Lcom/android/dx/ssa/SsaBasicBlock;

    iget v2, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/dx/ssa/SsaMethod;->maxLabel:I

    invoke-direct {v1, v0, v2, p0}, Lcom/android/dx/ssa/SsaBasicBlock;-><init>(IILcom/android/dx/ssa/SsaMethod;)V

    .line 241
    .local v1, "newBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/ssa/SsaMethod;->getGoto(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    return-object v1
.end method

.method public makeNewSsaReg()I
    .locals 2

    .line 698
    iget v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    .line 699
    .local v0, "reg":I
    iput v1, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 700
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    .line 701
    return v0
.end method

.method public mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V
    .locals 4
    .param p1, "mapper"    # Lcom/android/dx/ssa/RegisterMapper;

    .line 369
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 370
    .local v1, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaInsn;

    .line 371
    .local v3, "insn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v3, p1}, Lcom/android/dx/ssa/SsaInsn;->mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 372
    .end local v3    # "insn":Lcom/android/dx/ssa/SsaInsn;
    goto :goto_1

    .line 373
    .end local v1    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    :cond_0
    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/ssa/RegisterMapper;->getNewRegisterCount()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    .line 376
    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 377
    return-void
.end method

.method onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/dx/ssa/SsaMethod;->onSourcesChanged(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/ssa/SsaMethod;->updateOneDefinition(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 549
    return-void
.end method

.method onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 558
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 562
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 563
    .local v0, "resultReg":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 566
    :cond_1
    return-void
.end method

.method public onInsnsChanged()V
    .locals 1

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    .line 580
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 581
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->unmodifiableUseList:[Ljava/util/List;

    .line 582
    return-void
.end method

.method onSourceChanged(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "oldSource"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p3, "newSource"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 478
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    if-eqz p2, :cond_1

    .line 481
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 482
    .local v0, "reg":I
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    .end local v0    # "reg":I
    :cond_1
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 486
    .restart local v0    # "reg":I
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    array-length v2, v1

    if-gt v2, v0, :cond_2

    .line 487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 488
    return-void

    .line 490
    :cond_2
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method onSourcesChanged(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .locals 5
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "oldSources"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 503
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    if-eqz p2, :cond_1

    .line 506
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/SsaMethod;->removeFromUseList(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 509
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 510
    .local v0, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 512
    .local v1, "szNew":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 513
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 514
    .local v3, "reg":I
    iget-object v4, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .end local v3    # "reg":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public returnSpareRegisters()V
    .locals 1

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/ssa/SsaMethod;->borrowedSpareRegisters:I

    .line 332
    return-void
.end method

.method public setBackMode()V
    .locals 1

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dx/ssa/SsaMethod;->backMode:Z

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->useList:[Ljava/util/ArrayList;

    .line 855
    iput-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    .line 856
    return-void
.end method

.method setNewRegCount(I)V
    .locals 0
    .param p1, "newRegCount"    # I

    .line 687
    iput p1, p0, Lcom/android/dx/ssa/SsaMethod;->registerCount:I

    .line 688
    iput p1, p0, Lcom/android/dx/ssa/SsaMethod;->spareRegisterBase:I

    .line 689
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    .line 690
    return-void
.end method

.method updateOneDefinition(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "oldResult"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 594
    iget-object v0, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    if-eqz p2, :cond_1

    .line 597
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 598
    .local v0, "reg":I
    iget-object v1, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 601
    .end local v0    # "reg":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 603
    .local v0, "resultReg":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v0, :cond_3

    .line 604
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 606
    .local v1, "reg":I
    iget-object v2, p0, Lcom/android/dx/ssa/SsaMethod;->definitionList:[Lcom/android/dx/ssa/SsaInsn;

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    .line 609
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    aput-object p1, v2, v3

    goto :goto_0

    .line 607
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Duplicate add of insn"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    .end local v1    # "reg":I
    :cond_3
    :goto_0
    return-void
.end method
