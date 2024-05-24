.class public Lcom/android/dx/ssa/SCCP;
.super Ljava/lang/Object;
.source "SCCP.java"


# static fields
.field private static final CONSTANT:I = 0x1

.field private static final TOP:I = 0x0

.field private static final VARYING:I = 0x2


# instance fields
.field private final branchWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final cfgPhiWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final cfgWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final executableBlocks:Ljava/util/BitSet;

.field private final latticeConstants:[Lcom/android/dx/rop/cst/Constant;

.field private final latticeValues:[I

.field private final regCount:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final ssaWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final varyingWorklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 3
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 71
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    .line 72
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    .line 73
    new-array v0, v0, [Lcom/android/dx/rop/cst/Constant;

    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 82
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 2
    .param p1, "ssaBlock"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 100
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_0
    return-void
.end method

.method private addUsersToWorklist(II)V
    .locals 3
    .param p1, "reg"    # I
    .param p2, "latticeValue"    # I

    .line 114
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 116
    .local v1, "insn":Lcom/android/dx/ssa/SsaInsn;
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 120
    .restart local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    goto :goto_1

    .line 123
    :cond_2
    :goto_2
    return-void
.end method

.method private static latticeValName(I)Ljava/lang/String;
    .locals 1
    .param p0, "latticeVal"    # I

    .line 227
    packed-switch p0, :pswitch_data_0

    .line 231
    const-string v0, "UNKNOWN"

    return-object v0

    .line 230
    :pswitch_0
    const-string v0, "VARYING"

    return-object v0

    .line 229
    :pswitch_1
    const-string v0, "CONSTANT"

    return-object v0

    .line 228
    :pswitch_2
    const-string v0, "TOP"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1
    .param p0, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 91
    new-instance v0, Lcom/android/dx/ssa/SCCP;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SCCP;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/android/dx/ssa/SCCP;->run()V

    .line 92
    return-void
.end method

.method private replaceBranches()V
    .locals 11

    .line 655
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 657
    .local v1, "insn":Lcom/android/dx/ssa/SsaInsn;
    const/4 v2, -0x1

    .line 658
    .local v2, "oldSuccessor":I
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    .line 659
    .local v3, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    .line 660
    .local v4, "successorSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 661
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    .line 662
    .local v6, "successorBlock":I
    iget-object v7, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 663
    move v2, v6

    .line 660
    .end local v6    # "successorBlock":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 671
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    goto :goto_0

    .line 674
    :cond_3
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v5

    .line 675
    .local v5, "originalRopInsn":Lcom/android/dx/rop/code/Insn;
    new-instance v6, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v7, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    .line 676
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 675
    invoke-virtual {v3, v6}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceLastInsn(Lcom/android/dx/rop/code/Insn;)V

    .line 677
    invoke-virtual {v3, v2}, Lcom/android/dx/ssa/SsaBasicBlock;->removeSuccessor(I)V

    .line 678
    .end local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v2    # "oldSuccessor":I
    .end local v3    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v4    # "successorSize":I
    .end local v5    # "originalRopInsn":Lcom/android/dx/rop/code/Insn;
    goto :goto_0

    .line 679
    :cond_4
    return-void
.end method

.method private replaceConstants()V
    .locals 12

    .line 602
    const/4 v0, 0x0

    .local v0, "reg":I
    :goto_0
    iget v1, p0, Lcom/android/dx/ssa/SCCP;->regCount:I

    if-ge v0, v1, :cond_5

    .line 603
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 604
    goto :goto_2

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v1, v1, v0

    instance-of v1, v1, Lcom/android/dx/rop/cst/TypedConstant;

    if-nez v1, :cond_1

    .line 608
    goto :goto_2

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 612
    .local v1, "defn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 614
    .local v2, "typeBearer":Lcom/android/dx/rop/type/TypeBearer;
    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 619
    goto :goto_2

    .line 623
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 624
    .local v3, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v4, v4, v0

    check-cast v4, Lcom/android/dx/rop/cst/TypedConstant;

    .line 625
    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 626
    .local v4, "newDest":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v1, v4}, Lcom/android/dx/ssa/SsaInsn;->setResult(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 632
    iget-object v5, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v5, v0}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaInsn;

    .line 633
    .local v6, "insn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->isPhiOrMove()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 634
    goto :goto_1

    .line 637
    :cond_3
    move-object v7, v6

    check-cast v7, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 638
    .local v7, "nInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    .line 640
    .local v8, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v8, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v9

    .line 642
    .local v9, "index":I
    invoke-virtual {v8, v9}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 643
    .local v10, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v11, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v11, v11, v0

    check-cast v11, Lcom/android/dx/rop/cst/TypedConstant;

    .line 644
    invoke-virtual {v10, v11}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 646
    .local v11, "newSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v7, v9, v11}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 647
    .end local v6    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v7    # "nInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    .end local v8    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v9    # "index":I
    .end local v10    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v11    # "newSpec":Lcom/android/dx/rop/code/RegisterSpec;
    goto :goto_1

    .line 602
    .end local v1    # "defn":Lcom/android/dx/ssa/SsaInsn;
    .end local v2    # "typeBearer":Lcom/android/dx/rop/type/TypeBearer;
    .end local v3    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "newDest":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    .end local v0    # "reg":I
    :cond_5
    return-void
.end method

.method private run()V
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 543
    .local v0, "firstBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    .line 547
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 592
    :cond_1
    invoke-direct {p0}, Lcom/android/dx/ssa/SCCP;->replaceConstants()V

    .line 593
    invoke-direct {p0}, Lcom/android/dx/ssa/SCCP;->replaceBranches()V

    .line 594
    return-void

    .line 550
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 551
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 552
    .local v1, "listSize":I
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->cfgWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 553
    .local v2, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-direct {p0, v2}, Lcom/android/dx/ssa/SCCP;->simulateBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 554
    .end local v1    # "listSize":I
    .end local v2    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    goto :goto_0

    .line 556
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 557
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 558
    .restart local v1    # "listSize":I
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->cfgPhiWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 559
    .restart local v2    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-direct {p0, v2}, Lcom/android/dx/ssa/SCCP;->simulatePhiBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 560
    .end local v1    # "listSize":I
    .end local v2    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    goto :goto_1

    .line 562
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 563
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 564
    .restart local v1    # "listSize":I
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->varyingWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaInsn;

    .line 566
    .local v2, "insn":Lcom/android/dx/ssa/SsaInsn;
    iget-object v3, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 567
    goto :goto_2

    .line 570
    :cond_5
    instance-of v3, v2, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v3, :cond_6

    .line 571
    move-object v3, v2

    check-cast v3, Lcom/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v3}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    goto :goto_3

    .line 573
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/dx/ssa/SCCP;->simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V

    .line 575
    .end local v1    # "listSize":I
    .end local v2    # "insn":Lcom/android/dx/ssa/SsaInsn;
    :goto_3
    goto :goto_2

    .line 576
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 578
    .restart local v1    # "listSize":I
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->ssaWorklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaInsn;

    .line 580
    .restart local v2    # "insn":Lcom/android/dx/ssa/SsaInsn;
    iget-object v3, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 581
    goto :goto_4

    .line 584
    :cond_8
    instance-of v3, v2, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v3, :cond_9

    .line 585
    move-object v3, v2

    check-cast v3, Lcom/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v3}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    goto :goto_5

    .line 587
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/dx/ssa/SCCP;->simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V

    .line 589
    .end local v1    # "listSize":I
    .end local v2    # "insn":Lcom/android/dx/ssa/SsaInsn;
    :goto_5
    goto :goto_4
.end method

.method private setLatticeValueTo(IILcom/android/dx/rop/cst/Constant;)Z
    .locals 4
    .param p1, "reg"    # I
    .param p2, "value"    # I
    .param p3, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v3, v2, p1

    if-eq v3, p2, :cond_0

    .line 135
    aput p2, v2, p1

    .line 136
    return v1

    .line 138
    :cond_0
    return v0

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v2, v2, p1

    .line 141
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    return v0

    .line 142
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aput p2, v0, p1

    .line 143
    iget-object v0, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aput-object p3, v0, p1

    .line 144
    return v1
.end method

.method private simulateBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 3
    .param p1, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 203
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 204
    .local v1, "insn":Lcom/android/dx/ssa/SsaInsn;
    instance-of v2, v1, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v2, :cond_0

    .line 205
    move-object v2, v1

    check-cast v2, Lcom/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v2}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    goto :goto_1

    .line 207
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/SCCP;->simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V

    .line 209
    .end local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    :goto_1
    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method private simulateBranch(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 14
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 241
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 242
    .local v0, "opcode":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 244
    .local v1, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v2, 0x0

    .line 245
    .local v2, "constantBranch":Z
    const/4 v3, 0x0

    .line 248
    .local v3, "constantSuccessor":Z
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_f

    .line 249
    const/4 v4, 0x0

    .line 250
    .local v4, "cA":Lcom/android/dx/rop/cst/Constant;
    const/4 v5, 0x0

    .line 252
    .local v5, "cB":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 253
    .local v8, "specA":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    .line 254
    .local v9, "regA":I
    iget-object v10, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v10, v8}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v10, v10, v9

    if-ne v10, v7, :cond_0

    .line 256
    iget-object v10, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v4, v10, v9

    .line 259
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 260
    invoke-virtual {v1, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 261
    .local v10, "specB":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    .line 262
    .local v11, "regB":I
    iget-object v12, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v12, v10}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v12, v12, v11

    if-ne v12, v7, :cond_1

    .line 264
    iget-object v12, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v5, v12, v11

    .line 269
    .end local v10    # "specB":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v11    # "regB":I
    :cond_1
    const-string v10, "Unexpected op"

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v11

    if-ne v11, v7, :cond_8

    .line 270
    move-object v11, v4

    check-cast v11, Lcom/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v11}, Lcom/android/dx/rop/cst/TypedConstant;->getBasicType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 294
    goto/16 :goto_c

    .line 272
    :pswitch_0
    const/4 v2, 0x1

    .line 273
    move-object v11, v4

    check-cast v11, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v11}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v11

    .line 274
    .local v11, "vA":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    .line 294
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 291
    :pswitch_1
    if-lez v11, :cond_2

    move v10, v7

    goto :goto_0

    :cond_2
    move v10, v6

    :goto_0
    move v3, v10

    .line 292
    goto/16 :goto_c

    .line 288
    :pswitch_2
    if-gtz v11, :cond_3

    move v10, v7

    goto :goto_1

    :cond_3
    move v10, v6

    :goto_1
    move v3, v10

    .line 289
    goto/16 :goto_c

    .line 285
    :pswitch_3
    if-ltz v11, :cond_4

    move v10, v7

    goto :goto_2

    :cond_4
    move v10, v6

    :goto_2
    move v3, v10

    .line 286
    goto/16 :goto_c

    .line 282
    :pswitch_4
    if-gez v11, :cond_5

    move v10, v7

    goto :goto_3

    :cond_5
    move v10, v6

    :goto_3
    move v3, v10

    .line 283
    goto/16 :goto_c

    .line 279
    :pswitch_5
    if-eqz v11, :cond_6

    move v10, v7

    goto :goto_4

    :cond_6
    move v10, v6

    :goto_4
    move v3, v10

    .line 280
    goto/16 :goto_c

    .line 276
    :pswitch_6
    if-nez v11, :cond_7

    move v10, v7

    goto :goto_5

    :cond_7
    move v10, v6

    :goto_5
    move v3, v10

    .line 277
    goto/16 :goto_c

    .line 300
    .end local v11    # "vA":I
    :cond_8
    if-eqz v4, :cond_f

    if-eqz v5, :cond_f

    .line 301
    move-object v11, v4

    check-cast v11, Lcom/android/dx/rop/cst/TypedConstant;

    invoke-virtual {v11}, Lcom/android/dx/rop/cst/TypedConstant;->getBasicType()I

    move-result v11

    packed-switch v11, :pswitch_data_2

    goto/16 :goto_c

    .line 303
    :pswitch_7
    const/4 v2, 0x1

    .line 304
    move-object v11, v4

    check-cast v11, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v11}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v11

    .line 305
    .restart local v11    # "vA":I
    move-object v12, v5

    check-cast v12, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v12}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v12

    .line 306
    .local v12, "vB":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v13

    packed-switch v13, :pswitch_data_3

    .line 326
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 323
    :pswitch_8
    if-le v11, v12, :cond_9

    move v10, v7

    goto :goto_6

    :cond_9
    move v10, v6

    :goto_6
    move v3, v10

    .line 324
    goto :goto_c

    .line 320
    :pswitch_9
    if-gt v11, v12, :cond_a

    move v10, v7

    goto :goto_7

    :cond_a
    move v10, v6

    :goto_7
    move v3, v10

    .line 321
    goto :goto_c

    .line 317
    :pswitch_a
    if-lt v11, v12, :cond_b

    move v10, v7

    goto :goto_8

    :cond_b
    move v10, v6

    :goto_8
    move v3, v10

    .line 318
    goto :goto_c

    .line 314
    :pswitch_b
    if-ge v11, v12, :cond_c

    move v10, v7

    goto :goto_9

    :cond_c
    move v10, v6

    :goto_9
    move v3, v10

    .line 315
    goto :goto_c

    .line 311
    :pswitch_c
    if-eq v11, v12, :cond_d

    move v10, v7

    goto :goto_a

    :cond_d
    move v10, v6

    :goto_a
    move v3, v10

    .line 312
    goto :goto_c

    .line 308
    :pswitch_d
    if-ne v11, v12, :cond_e

    move v10, v7

    goto :goto_b

    :cond_e
    move v10, v6

    :goto_b
    move v3, v10

    .line 309
    nop

    .line 339
    .end local v4    # "cA":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "cB":Lcom/android/dx/rop/cst/Constant;
    .end local v8    # "specA":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v9    # "regA":I
    .end local v11    # "vA":I
    .end local v12    # "vB":I
    :cond_f
    :goto_c
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    .line 341
    .local v4, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    if-eqz v2, :cond_11

    .line 343
    if-eqz v3, :cond_10

    .line 344
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    .local v5, "successorBlock":I
    goto :goto_d

    .line 346
    .end local v5    # "successorBlock":I
    :cond_10
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    .line 348
    .restart local v5    # "successorBlock":I
    :goto_d
    iget-object v6, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-direct {p0, v6}, Lcom/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 349
    iget-object v6, p0, Lcom/android/dx/ssa/SCCP;->branchWorklist:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v5    # "successorBlock":I
    goto :goto_f

    .line 351
    :cond_11
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 352
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessorList()Lcom/android/dx/util/IntList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    .line 353
    .local v6, "successorBlock":I
    iget-object v7, p0, Lcom/android/dx/ssa/SCCP;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v7}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-direct {p0, v7}, Lcom/android/dx/ssa/SCCP;->addBlockToWorklist(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 351
    .end local v6    # "successorBlock":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 356
    .end local v5    # "i":I
    :cond_12
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private simulateMath(Lcom/android/dx/ssa/SsaInsn;I)Lcom/android/dx/rop/cst/Constant;
    .locals 12
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "resultType"    # I

    .line 366
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 367
    .local v0, "ropInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    .line 368
    .local v1, "opcode":I
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 369
    .local v2, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 373
    .local v3, "regA":I
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v4, v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 374
    const/4 v4, 0x0

    .local v4, "cA":Lcom/android/dx/rop/cst/Constant;
    goto :goto_0

    .line 376
    .end local v4    # "cA":Lcom/android/dx/rop/cst/Constant;
    :cond_0
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v4, v4, v3

    .line 379
    .restart local v4    # "cA":Lcom/android/dx/rop/cst/Constant;
    :goto_0
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 380
    move-object v6, v0

    check-cast v6, Lcom/android/dx/rop/code/CstInsn;

    .line 381
    .local v6, "cstInsn":Lcom/android/dx/rop/code/CstInsn;
    invoke-virtual {v6}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 382
    .local v6, "cB":Lcom/android/dx/rop/cst/Constant;
    goto :goto_1

    .line 383
    .end local v6    # "cB":Lcom/android/dx/rop/cst/Constant;
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    .line 384
    .local v6, "regB":I
    iget-object v7, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v7, v7, v6

    if-eq v7, v5, :cond_2

    .line 385
    const/4 v7, 0x0

    move-object v6, v7

    .local v7, "cB":Lcom/android/dx/rop/cst/Constant;
    goto :goto_1

    .line 387
    .end local v7    # "cB":Lcom/android/dx/rop/cst/Constant;
    :cond_2
    iget-object v7, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v7, v7, v6

    move-object v6, v7

    .line 391
    .local v6, "cB":Lcom/android/dx/rop/cst/Constant;
    :goto_1
    const/4 v7, 0x0

    if-eqz v4, :cond_8

    if-nez v6, :cond_3

    goto :goto_4

    .line 396
    :cond_3
    packed-switch p2, :pswitch_data_0

    .line 461
    return-object v7

    .line 399
    :pswitch_0
    const/4 v8, 0x0

    .line 401
    .local v8, "skip":Z
    move-object v9, v4

    check-cast v9, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v9}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v9

    .line 402
    .local v9, "vA":I
    move-object v10, v6

    check-cast v10, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v10}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v10

    .line 404
    .local v10, "vB":I
    packed-switch v1, :pswitch_data_1

    .line 454
    :pswitch_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "Unexpected op"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 443
    :pswitch_2
    ushr-int v5, v9, v10

    .line 444
    .local v5, "vR":I
    goto :goto_2

    .line 440
    .end local v5    # "vR":I
    :pswitch_3
    shr-int v5, v9, v10

    .line 441
    .restart local v5    # "vR":I
    goto :goto_2

    .line 437
    .end local v5    # "vR":I
    :pswitch_4
    shl-int v5, v9, v10

    .line 438
    .restart local v5    # "vR":I
    goto :goto_2

    .line 434
    .end local v5    # "vR":I
    :pswitch_5
    xor-int v5, v9, v10

    .line 435
    .restart local v5    # "vR":I
    goto :goto_2

    .line 431
    .end local v5    # "vR":I
    :pswitch_6
    or-int v5, v9, v10

    .line 432
    .restart local v5    # "vR":I
    goto :goto_2

    .line 428
    .end local v5    # "vR":I
    :pswitch_7
    and-int v5, v9, v10

    .line 429
    .restart local v5    # "vR":I
    goto :goto_2

    .line 446
    .end local v5    # "vR":I
    :pswitch_8
    if-nez v10, :cond_4

    .line 447
    const/4 v8, 0x1

    .line 448
    const/4 v5, 0x0

    .restart local v5    # "vR":I
    goto :goto_2

    .line 450
    .end local v5    # "vR":I
    :cond_4
    rem-int v5, v9, v10

    .line 452
    .restart local v5    # "vR":I
    goto :goto_2

    .line 420
    .end local v5    # "vR":I
    :pswitch_9
    if-nez v10, :cond_5

    .line 421
    const/4 v8, 0x1

    .line 422
    const/4 v5, 0x0

    .restart local v5    # "vR":I
    goto :goto_2

    .line 424
    .end local v5    # "vR":I
    :cond_5
    div-int v5, v9, v10

    .line 426
    .restart local v5    # "vR":I
    goto :goto_2

    .line 417
    .end local v5    # "vR":I
    :pswitch_a
    mul-int v5, v9, v10

    .line 418
    .restart local v5    # "vR":I
    goto :goto_2

    .line 410
    .end local v5    # "vR":I
    :pswitch_b
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v11

    if-ne v11, v5, :cond_6

    .line 411
    sub-int v5, v10, v9

    .restart local v5    # "vR":I
    goto :goto_2

    .line 413
    .end local v5    # "vR":I
    :cond_6
    sub-int v5, v9, v10

    .line 415
    .restart local v5    # "vR":I
    goto :goto_2

    .line 406
    .end local v5    # "vR":I
    :pswitch_c
    add-int v5, v9, v10

    .line 407
    .restart local v5    # "vR":I
    nop

    .line 457
    :goto_2
    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v5}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v7

    :goto_3
    return-object v7

    .line 393
    .end local v5    # "vR":I
    .end local v8    # "skip":Z
    .end local v9    # "vA":I
    .end local v10    # "vB":I
    :cond_8
    :goto_4
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 10
    .param p1, "insn"    # Lcom/android/dx/ssa/PhiInsn;

    .line 160
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 162
    .local v0, "phiResultReg":I
    iget-object v1, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 167
    .local v1, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v2, 0x0

    .line 168
    .local v2, "phiResultValue":I
    const/4 v3, 0x0

    .line 169
    .local v3, "phiConstant":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 171
    .local v4, "sourceSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 172
    invoke-virtual {p1, v5}, Lcom/android/dx/ssa/PhiInsn;->predBlockIndexForSourcesIndex(I)I

    move-result v6

    .line 173
    .local v6, "predBlockIndex":I
    invoke-virtual {v1, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 174
    .local v7, "sourceReg":I
    iget-object v8, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v8, v8, v7

    .line 176
    .local v8, "sourceRegValue":I
    iget-object v9, p0, Lcom/android/dx/ssa/SCCP;->executableBlocks:Ljava/util/BitSet;

    invoke-virtual {v9, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 177
    goto :goto_1

    .line 180
    :cond_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 181
    if-nez v3, :cond_2

    .line 182
    iget-object v9, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v3, v9, v7

    .line 183
    const/4 v2, 0x1

    goto :goto_1

    .line 184
    :cond_2
    iget-object v9, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v9, v9, v7

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 185
    const/4 v2, 0x2

    .line 186
    goto :goto_2

    .line 171
    .end local v6    # "predBlockIndex":I
    .end local v7    # "sourceReg":I
    .end local v8    # "sourceRegValue":I
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 189
    .restart local v6    # "predBlockIndex":I
    .restart local v7    # "sourceReg":I
    .restart local v8    # "sourceRegValue":I
    :cond_4
    move v2, v8

    .line 190
    nop

    .line 193
    .end local v5    # "i":I
    .end local v6    # "predBlockIndex":I
    .end local v7    # "sourceReg":I
    .end local v8    # "sourceRegValue":I
    :cond_5
    :goto_2
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/android/dx/rop/cst/Constant;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    invoke-direct {p0, v0, v2}, Lcom/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    .line 196
    :cond_6
    return-void
.end method

.method private simulatePhiBlock(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 3
    .param p1, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 217
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 218
    .local v1, "insn":Lcom/android/dx/ssa/SsaInsn;
    instance-of v2, v1, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v2, :cond_0

    .line 219
    move-object v2, v1

    check-cast v2, Lcom/android/dx/ssa/PhiInsn;

    invoke-direct {p0, v2}, Lcom/android/dx/ssa/SCCP;->simulatePhi(Lcom/android/dx/ssa/PhiInsn;)V

    .line 223
    .end local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    goto :goto_0

    .line 221
    .restart local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    :cond_0
    return-void

    .line 224
    .end local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    :cond_1
    return-void
.end method

.method private simulateStmt(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 470
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 471
    .local v0, "ropInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/SCCP;->simulateBranch(Lcom/android/dx/ssa/SsaInsn;)V

    .line 476
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    .line 477
    .local v1, "opcode":I
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 479
    .local v3, "result":Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 481
    const/16 v5, 0x11

    if-eq v1, v5, :cond_3

    const/16 v5, 0x12

    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 485
    :cond_2
    return-void

    .line 482
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    .line 483
    .local v5, "succ":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaInsn;

    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 484
    .end local v5    # "succ":Lcom/android/dx/ssa/SsaBasicBlock;
    nop

    .line 489
    :cond_4
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 490
    .local v5, "resultReg":I
    const/4 v6, 0x2

    .line 491
    .local v6, "resultValue":I
    const/4 v7, 0x0

    .line 493
    .local v7, "resultConstant":Lcom/android/dx/rop/cst/Constant;
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 526
    :sswitch_0
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v8, v4, v5

    if-ne v8, v2, :cond_5

    .line 527
    aget v6, v4, v5

    .line 528
    iget-object v2, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v7, v2, v5

    goto :goto_1

    .line 519
    :sswitch_1
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/dx/ssa/SCCP;->simulateMath(Lcom/android/dx/ssa/SsaInsn;I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    .line 520
    if-eqz v7, :cond_5

    .line 521
    const/4 v6, 0x1

    goto :goto_1

    .line 495
    :sswitch_2
    move-object v2, v0

    check-cast v2, Lcom/android/dx/rop/code/CstInsn;

    .line 496
    .local v2, "cstInsn":Lcom/android/dx/rop/code/CstInsn;
    const/4 v6, 0x1

    .line 497
    invoke-virtual {v2}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v7

    .line 498
    goto :goto_1

    .line 501
    .end local v2    # "cstInsn":Lcom/android/dx/rop/code/CstInsn;
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    if-ne v8, v2, :cond_5

    .line 502
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 503
    .local v2, "sourceReg":I
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeValues:[I

    aget v6, v4, v2

    .line 504
    iget-object v4, p0, Lcom/android/dx/ssa/SCCP;->latticeConstants:[Lcom/android/dx/rop/cst/Constant;

    aget-object v7, v4, v2

    .line 505
    .end local v2    # "sourceReg":I
    nop

    .line 536
    :cond_5
    :goto_1
    invoke-direct {p0, v5, v6, v7}, Lcom/android/dx/ssa/SCCP;->setLatticeValueTo(IILcom/android/dx/rop/cst/Constant;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 537
    invoke-direct {p0, v5, v6}, Lcom/android/dx/ssa/SCCP;->addUsersToWorklist(II)V

    .line 539
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x12 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method
