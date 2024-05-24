.class public Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitLocalCombiningAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;,
        Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final invokeRangeInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final localVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/dx/rop/code/LocalItem;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

.field private final minimizeRegisters:Z

.field private final moveResultPseudoInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/NormalSsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramRangeEnd:I

.field private final phiInsns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/PhiInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedRopRegs:Ljava/util/BitSet;

.field private final ssaRegsMapped:Ljava/util/BitSet;

.field private final usedRopRegs:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;Z)V
    .locals 3
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p2, "interference"    # Lcom/android/dx/ssa/back/InterferenceGraph;
    .param p3, "minimizeRegisters"    # Z

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    .line 137
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    .line 139
    new-instance v0, Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 140
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;-><init>(Lcom/android/dx/ssa/back/InterferenceGraph;I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 142
    iput-boolean p3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->minimizeRegisters:Z

    .line 150
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 152
    new-instance v1, Ljava/util/BitSet;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/BitSet;->set(II)V

    .line 154
    new-instance v1, Ljava/util/BitSet;

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    .line 155
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    .line 159
    return-void
.end method

.method static synthetic access$100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 47
    invoke-static {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    .line 47
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    .line 47
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    .line 47
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    .line 47
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V
    .locals 4
    .param p1, "ssaSpec"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "ropReg"    # I

    .line 774
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 777
    .local v0, "ssaReg":I
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    .line 788
    .local v1, "category":I
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->addMapping(III)V

    .line 789
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 790
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int v3, p2, v1

    invoke-virtual {v2, p2, v3}, Ljava/util/BitSet;->set(II)V

    .line 791
    return-void

    .line 778
    .end local v1    # "category":I
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "attempt to add invalid register mapping"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 18
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 802
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I

    move-result v1

    .line 804
    .local v1, "newRegStart":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 805
    .local v2, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 806
    .local v3, "szSources":I
    move v4, v1

    .line 808
    .local v4, "nextRopReg":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 809
    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 810
    .local v6, "source":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 811
    .local v7, "sourceReg":I
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    .line 812
    .local v8, "category":I
    move v9, v4

    .line 813
    .local v9, "curRopReg":I
    add-int/2addr v4, v8

    .line 815
    iget-object v10, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 816
    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_3

    .line 819
    :cond_0
    invoke-direct {v0, v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;

    move-result-object v10

    .line 820
    .local v10, "localItem":Lcom/android/dx/rop/code/LocalItem;
    invoke-direct {v0, v6, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    .line 822
    if-eqz v10, :cond_3

    .line 823
    invoke-direct {v0, v9, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    .line 824
    iget-object v11, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    .line 825
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 827
    .local v11, "similarRegisters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 833
    .local v12, "szSimilar":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v12, :cond_2

    .line 834
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/dx/rop/code/RegisterSpec;

    .line 835
    .local v14, "similarSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v14}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v15

    .line 838
    .local v15, "similarReg":I
    move/from16 v16, v1

    .end local v1    # "newRegStart":I
    .local v16, "newRegStart":I
    const/4 v1, -0x1

    move/from16 v17, v3

    .end local v3    # "szSources":I
    .local v17, "szSources":I
    invoke-virtual {v2, v15}, Lcom/android/dx/rop/code/RegisterSpecList;->indexOfRegister(I)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 839
    goto :goto_2

    .line 843
    :cond_1
    invoke-direct {v0, v14, v9, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    .line 833
    .end local v14    # "similarSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v15    # "similarReg":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    move/from16 v3, v17

    goto :goto_1

    .end local v16    # "newRegStart":I
    .end local v17    # "szSources":I
    .restart local v1    # "newRegStart":I
    .restart local v3    # "szSources":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v3

    .end local v1    # "newRegStart":I
    .end local v3    # "szSources":I
    .restart local v16    # "newRegStart":I
    .restart local v17    # "szSources":I
    goto :goto_3

    .line 822
    .end local v11    # "similarRegisters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    .end local v12    # "szSimilar":I
    .end local v13    # "j":I
    .end local v16    # "newRegStart":I
    .end local v17    # "szSources":I
    .restart local v1    # "newRegStart":I
    .restart local v3    # "szSources":I
    :cond_3
    move/from16 v16, v1

    move/from16 v17, v3

    .line 808
    .end local v1    # "newRegStart":I
    .end local v3    # "szSources":I
    .end local v6    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v7    # "sourceReg":I
    .end local v8    # "category":I
    .end local v9    # "curRopReg":I
    .end local v10    # "localItem":Lcom/android/dx/rop/code/LocalItem;
    .restart local v16    # "newRegStart":I
    .restart local v17    # "szSources":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v16

    move/from16 v3, v17

    goto :goto_0

    .line 847
    .end local v5    # "i":I
    .end local v16    # "newRegStart":I
    .end local v17    # "szSources":I
    .restart local v1    # "newRegStart":I
    .restart local v3    # "szSources":I
    :cond_4
    return-void
.end method

.method private analyzeInstructions()V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;

    invoke-direct {v1, p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;-><init>(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 764
    return-void
.end method

.method private canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z
    .locals 2
    .param p1, "ssaSpec"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "ropReg"    # I

    .line 673
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    .line 674
    .local v0, "category":I
    invoke-direct {p0, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 675
    invoke-virtual {v1, p1, p2}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->interferes(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 674
    :goto_0
    return v1
.end method

.method private canMapRegs(Ljava/util/ArrayList;I)Z
    .locals 4
    .param p2, "ropReg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;I)Z"
        }
    .end annotation

    .line 656
    .local p1, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/RegisterSpec;

    .line 657
    .local v1, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 659
    .end local v1    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    goto :goto_0

    .line 660
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I
    .locals 8
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;
    .param p2, "rangeLength"    # I
    .param p3, "categoriesForIndex"    # [I
    .param p4, "outMovesRequired"    # Ljava/util/BitSet;

    .line 967
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 970
    .local v0, "alignment":Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    const/4 v1, 0x0

    .line 971
    .local v1, "regNumber":I
    const/4 v2, 0x0

    .line 972
    .local v2, "p64bitsAligned":I
    const/4 v3, 0x0

    .line 973
    .local v3, "p64bitsNotAligned":I
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, p3, v5

    .line 974
    .local v6, "category":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 975
    invoke-static {v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 978
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 980
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 982
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 973
    .end local v6    # "category":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 986
    :cond_2
    if-le v3, v2, :cond_4

    .line 987
    iget v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 988
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_3

    .line 990
    :cond_3
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_3

    .line 992
    :cond_4
    if-lez v2, :cond_6

    .line 993
    iget v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 994
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_3

    .line 996
    :cond_5
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 1001
    .end local v1    # "regNumber":I
    .end local v2    # "p64bitsAligned":I
    .end local v3    # "p64bitsNotAligned":I
    :cond_6
    :goto_3
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 1003
    .local v1, "rangeStart":I
    :goto_4
    invoke-direct {p0, v1, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result v1

    .line 1005
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v2

    .line 1007
    .local v2, "fitWidth":I
    if-ltz v2, :cond_7

    .line 1008
    nop

    .line 1014
    .end local v2    # "fitWidth":I
    return v1

    .line 1010
    .restart local v2    # "fitWidth":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 1011
    invoke-virtual {p4}, Ljava/util/BitSet;->clear()V

    .line 1012
    .end local v2    # "fitWidth":I
    goto :goto_4
.end method

.method private findNextUnreservedRopReg(II)I
    .locals 1
    .param p1, "startReg"    # I
    .param p2, "regCategory"    # I

    .line 442
    invoke-direct {p0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(IILcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I

    move-result v0

    return v0
.end method

.method private findNextUnreservedRopReg(IILcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;)I
    .locals 4
    .param p1, "startReg"    # I
    .param p2, "width"    # I
    .param p3, "alignment"    # Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 454
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {p3, v0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v0

    .line 457
    .local v0, "reg":I
    :goto_0
    const/4 v1, 0x1

    .line 459
    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    :cond_0
    if-ne v1, p2, :cond_1

    .line 464
    return v0

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v3, v0, v1

    invoke-virtual {p3, v2, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v0

    .line 468
    .end local v1    # "i":I
    goto :goto_0
.end method

.method private findRangeAndAdjust(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .locals 14
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 860
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 861
    .local v0, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 863
    .local v1, "szSources":I
    new-array v2, v1, [I

    .line 864
    .local v2, "categoriesForIndex":[I
    const/4 v3, 0x0

    .line 867
    .local v3, "rangeLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 868
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    .line 869
    .local v5, "category":I
    aput v5, v2, v4

    .line 870
    aget v6, v2, v4

    add-int/2addr v3, v6

    .line 867
    .end local v5    # "category":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 874
    .end local v4    # "i":I
    :cond_0
    const/high16 v4, -0x80000000

    .line 876
    .local v4, "maxScore":I
    const/4 v5, -0x1

    .line 878
    .local v5, "resultRangeStart":I
    const/4 v6, 0x0

    .line 885
    .local v6, "resultMovesRequired":Ljava/util/BitSet;
    const/4 v7, 0x0

    .line 886
    .local v7, "rangeStartOffset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v1, :cond_7

    .line 887
    invoke-virtual {v0, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    .line 889
    .local v9, "ssaCenterReg":I
    if-eqz v8, :cond_1

    .line 890
    add-int/lit8 v10, v8, -0x1

    aget v10, v2, v10

    sub-int/2addr v7, v10

    .line 892
    :cond_1
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 893
    goto :goto_2

    .line 896
    :cond_2
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v10, v9}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v10

    add-int/2addr v10, v7

    .line 898
    .local v10, "rangeStart":I
    if-ltz v10, :cond_6

    invoke-direct {p0, v10, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->spansParamRange(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 899
    goto :goto_2

    .line 902
    :cond_3
    new-instance v11, Ljava/util/BitSet;

    invoke-direct {v11, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 904
    .local v11, "curMovesRequired":Ljava/util/BitSet;
    nop

    .line 905
    invoke-direct {p0, v10, p1, v2, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I

    move-result v12

    .line 908
    .local v12, "fitWidth":I
    if-gez v12, :cond_4

    .line 909
    goto :goto_2

    .line 912
    :cond_4
    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v13

    sub-int v13, v12, v13

    .line 914
    .local v13, "score":I
    if-le v13, v4, :cond_5

    .line 915
    move v4, v13

    .line 916
    move v5, v10

    .line 917
    move-object v6, v11

    .line 920
    :cond_5
    if-ne v12, v3, :cond_6

    .line 922
    goto :goto_3

    .line 886
    .end local v9    # "ssaCenterReg":I
    .end local v10    # "rangeStart":I
    .end local v11    # "curMovesRequired":Ljava/util/BitSet;
    .end local v12    # "fitWidth":I
    .end local v13    # "score":I
    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 932
    .end local v8    # "i":I
    :cond_7
    :goto_3
    const/4 v8, -0x1

    if-ne v5, v8, :cond_8

    .line 933
    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8, v1}, Ljava/util/BitSet;-><init>(I)V

    move-object v6, v8

    .line 935
    invoke-direct {p0, p1, v3, v2, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findAnyFittingRange(Lcom/android/dx/ssa/NormalSsaInsn;I[ILjava/util/BitSet;)I

    move-result v5

    .line 943
    :cond_8
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v8

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_9

    .line 945
    invoke-virtual {v0, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 944
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v8

    goto :goto_4

    .line 948
    .end local v8    # "i":I
    :cond_9
    return v5
.end method

.method private findRopRegForLocal(II)I
    .locals 5
    .param p1, "startReg"    # I
    .param p2, "category"    # I

    .line 481
    invoke-direct {p0, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getAlignment(I)Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    move-result-object v0

    .line 482
    .local v0, "alignment":Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v1

    .line 485
    .local v1, "reg":I
    :goto_0
    const/4 v2, 0x1

    .line 487
    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 491
    :cond_0
    if-ne v2, p2, :cond_1

    .line 492
    return v1

    .line 495
    :cond_1
    iget-object v3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->usedRopRegs:Ljava/util/BitSet;

    add-int v4, v1, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->nextClearBit(Ljava/util/BitSet;I)I

    move-result v1

    .line 496
    .end local v2    # "i":I
    goto :goto_0
.end method

.method private fitPlanForRange(ILcom/android/dx/ssa/NormalSsaInsn;[ILjava/util/BitSet;)I
    .locals 11
    .param p1, "ropReg"    # I
    .param p2, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;
    .param p3, "categoriesForIndex"    # [I
    .param p4, "outMovesRequired"    # Ljava/util/BitSet;

    .line 1033
    invoke-virtual {p2}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 1034
    .local v0, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 1035
    .local v1, "szSources":I
    const/4 v2, 0x0

    .line 1036
    .local v2, "fitWidth":I
    invoke-virtual {p2}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/android/dx/util/IntSet;

    move-result-object v3

    .line 1037
    .local v3, "liveOut":Lcom/android/dx/util/IntSet;
    invoke-virtual {p0, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 1040
    .local v4, "liveOutSpecs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v5, Ljava/util/BitSet;

    iget-object v6, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    .line 1042
    .local v5, "seen":Ljava/util/BitSet;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_5

    .line 1043
    invoke-virtual {v0, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 1044
    .local v7, "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 1045
    .local v8, "ssaReg":I
    aget v9, p3, v6

    .line 1047
    .local v9, "category":I
    if-eqz v6, :cond_0

    .line 1048
    add-int/lit8 v10, v6, -0x1

    aget v10, p3, v10

    add-int/2addr p1, v10

    .line 1051
    :cond_0
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 1052
    invoke-virtual {v10, v8}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v10

    if-ne v10, p1, :cond_1

    .line 1054
    add-int/2addr v2, v9

    goto :goto_1

    .line 1055
    :cond_1
    invoke-direct {p0, p1, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->rangeContainsReserved(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1056
    const/4 v2, -0x1

    .line 1057
    goto :goto_2

    .line 1058
    :cond_2
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1059
    invoke-direct {p0, v7, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1060
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1062
    add-int/2addr v2, v9

    goto :goto_1

    .line 1063
    :cond_3
    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v10, v4, p1, v9}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    .line 1064
    invoke-virtual {v10, v0, p1, v9}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->areAnyPinned(Lcom/android/dx/rop/code/RegisterSpecList;II)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1077
    invoke-virtual {p4, v6}, Ljava/util/BitSet;->set(I)V

    .line 1083
    :goto_1
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    .line 1042
    .end local v7    # "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v8    # "ssaReg":I
    .end local v9    # "category":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1079
    .restart local v7    # "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v8    # "ssaReg":I
    .restart local v9    # "category":I
    :cond_4
    const/4 v2, -0x1

    .line 1080
    nop

    .line 1085
    .end local v6    # "i":I
    .end local v7    # "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v8    # "ssaReg":I
    .end local v9    # "category":I
    :cond_5
    :goto_2
    return v2
.end method

.method private getAlignment(I)Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    .locals 2
    .param p1, "regCategory"    # I

    .line 421
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->UNSPECIFIED:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 423
    .local v0, "alignment":Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 424
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-static {v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->isEven(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->EVEN:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    goto :goto_0

    .line 427
    :cond_0
    sget-object v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;->ODD:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Alignment;

    .line 431
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getLocalItemForReg(I)Lcom/android/dx/rop/code/LocalItem;
    .locals 5
    .param p1, "ssaReg"    # I

    .line 1116
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1117
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/rop/code/LocalItem;Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/RegisterSpec;

    .line 1118
    .local v3, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/LocalItem;

    return-object v0

    .line 1121
    .end local v3    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    goto :goto_1

    .line 1122
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/rop/code/LocalItem;Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;>;"
    :cond_1
    goto :goto_0

    .line 1124
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getParameterIndexForReg(I)I
    .locals 5
    .param p1, "ssaReg"    # I

    .line 265
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0, p1}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    .line 266
    .local v0, "defInsn":Lcom/android/dx/ssa/SsaInsn;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 267
    return v1

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 273
    .local v2, "opcode":Lcom/android/dx/rop/code/Rop;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/CstInsn;

    .line 275
    .local v1, "origInsn":Lcom/android/dx/rop/code/CstInsn;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v3

    return v3

    .line 278
    .end local v1    # "origInsn":Lcom/android/dx/rop/code/CstInsn;
    :cond_1
    return v1
.end method

.method private handleCheckCastResults()V
    .locals 20

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->moveResultPseudoInsns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 537
    .local v2, "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-virtual {v2}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 538
    .local v3, "moveRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    .line 539
    .local v4, "moveReg":I
    invoke-virtual {v2}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v5

    .line 542
    .local v5, "predBlocks":Ljava/util/BitSet;
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 543
    goto :goto_0

    .line 546
    :cond_0
    iget-object v6, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 547
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 548
    .local v6, "predBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v9

    .line 554
    .local v9, "insnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dx/ssa/SsaInsn;

    .line 555
    .local v10, "checkCastInsn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v11

    const/16 v12, 0x2b

    if-eq v11, v12, :cond_1

    .line 556
    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 560
    .local v11, "checkRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    .line 567
    .local v12, "checkReg":I
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v13

    .line 568
    .local v13, "category":I
    iget-object v14, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v14, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    .line 569
    .local v14, "moveMapped":Z
    iget-object v15, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v15, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    .line 570
    .local v15, "checkMapped":Z
    xor-int/lit8 v16, v15, 0x1

    and-int v16, v14, v16

    if-eqz v16, :cond_2

    .line 571
    iget-object v7, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v7, v4}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v7

    .line 572
    .local v7, "moveRopReg":I
    invoke-direct {v0, v11, v7, v13}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v15

    .line 574
    .end local v7    # "moveRopReg":I
    :cond_2
    xor-int/lit8 v7, v14, 0x1

    and-int/2addr v7, v15

    if-eqz v7, :cond_3

    .line 575
    iget-object v7, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v7, v12}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v7

    .line 576
    .local v7, "checkRopReg":I
    invoke-direct {v0, v3, v7, v13}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v14

    .line 580
    .end local v7    # "checkRopReg":I
    :cond_3
    if-eqz v14, :cond_5

    if-nez v15, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v17, v1

    goto :goto_3

    .line 581
    :cond_5
    :goto_1
    iget v7, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {v0, v7, v13}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v7

    .line 582
    .local v7, "ropReg":I
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v17, v1

    const/4 v1, 0x2

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v8

    .line 584
    .local v1, "ssaRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_2
    const/4 v8, 0x0

    invoke-direct {v0, v1, v7, v13, v8}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v18

    if-nez v18, :cond_6

    .line 588
    add-int/lit8 v8, v7, 0x1

    invoke-direct {v0, v8, v13}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v7

    goto :goto_2

    .line 597
    .end local v1    # "ssaRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    .end local v7    # "ropReg":I
    :cond_6
    :goto_3
    nop

    .line 598
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    move v1, v7

    .line 599
    .local v1, "hasExceptionHandlers":Z
    iget-object v7, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v7, v4}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v7

    .line 600
    .local v7, "moveRopReg":I
    iget-object v8, v0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v8, v12}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v8

    .line 601
    .local v8, "checkRopReg":I
    if-eq v7, v8, :cond_8

    if-nez v1, :cond_8

    .line 602
    move/from16 v16, v1

    .end local v1    # "hasExceptionHandlers":Z
    .local v16, "hasExceptionHandlers":Z
    move-object v1, v10

    check-cast v1, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 603
    move-object/from16 v18, v2

    .end local v2    # "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    .local v18, "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-virtual {v0, v10, v11}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->insertMoveBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 602
    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "moveRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .local v19, "moveRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v1, v3, v2}, Lcom/android/dx/ssa/NormalSsaInsn;->changeOneSource(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 604
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    goto :goto_5

    .line 601
    .end local v16    # "hasExceptionHandlers":Z
    .end local v18    # "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    .end local v19    # "moveRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v1    # "hasExceptionHandlers":Z
    .restart local v2    # "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    .restart local v3    # "moveRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_8
    move/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 606
    .end local v1    # "hasExceptionHandlers":Z
    .end local v2    # "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    .end local v3    # "moveRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "moveReg":I
    .end local v5    # "predBlocks":Ljava/util/BitSet;
    .end local v6    # "predBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v7    # "moveRopReg":I
    .end local v8    # "checkRopReg":I
    .end local v9    # "insnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v10    # "checkCastInsn":Lcom/android/dx/ssa/SsaInsn;
    .end local v11    # "checkRegSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v12    # "checkReg":I
    .end local v13    # "category":I
    .end local v14    # "moveMapped":Z
    .end local v15    # "checkMapped":Z
    :goto_5
    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 607
    :cond_9
    return-void
.end method

.method private handleInvokeRangeInsns()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->invokeRangeInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 526
    .local v1, "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->adjustAndMapSourceRangeRange(Lcom/android/dx/ssa/NormalSsaInsn;)V

    .line 527
    .end local v1    # "insn":Lcom/android/dx/ssa/NormalSsaInsn;
    goto :goto_0

    .line 528
    :cond_0
    return-void
.end method

.method private handleLocalAssociatedOther()V
    .locals 11

    .line 289
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 290
    .local v1, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    iget v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    .line 292
    .local v2, "ropReg":I
    const/4 v3, 0x0

    .line 294
    .local v3, "done":Z
    :cond_0
    const/4 v4, 0x1

    .line 297
    .local v4, "maxCategory":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 298
    .local v5, "sz":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 299
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/rop/code/RegisterSpec;

    .line 300
    .local v7, "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    .line 301
    .local v8, "category":I
    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_1

    if-le v8, v4, :cond_1

    .line 303
    move v4, v8

    .line 298
    .end local v7    # "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v8    # "category":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 307
    .end local v6    # "i":I
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findRopRegForLocal(II)I

    move-result v2

    .line 308
    invoke-direct {p0, v1, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapRegs(Ljava/util/ArrayList;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 309
    const/4 v6, 0x1

    invoke-direct {p0, v1, v2, v4, v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v3

    .line 313
    :cond_3
    nop

    .end local v4    # "maxCategory":I
    .end local v5    # "sz":I
    add-int/lit8 v2, v2, 0x1

    .line 314
    if-eqz v3, :cond_0

    .line 315
    .end local v1    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    .end local v2    # "ropReg":I
    .end local v3    # "done":Z
    goto :goto_0

    .line 316
    :cond_4
    return-void
.end method

.method private handleLocalAssociatedParams()V
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 229
    .local v1, "ssaRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 230
    .local v2, "sz":I
    const/4 v3, -0x1

    .line 231
    .local v3, "paramIndex":I
    const/4 v4, 0x0

    .line 234
    .local v4, "paramCategory":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 235
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/code/RegisterSpec;

    .line 236
    .local v6, "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    .line 238
    .local v7, "ssaReg":I
    invoke-direct {p0, v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v3

    .line 240
    if-ltz v3, :cond_0

    .line 241
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    .line 242
    invoke-direct {p0, v6, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    .line 243
    goto :goto_2

    .line 234
    .end local v6    # "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v7    # "ssaReg":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 247
    .end local v5    # "i":I
    :cond_1
    :goto_2
    if-gez v3, :cond_2

    .line 249
    goto :goto_0

    .line 253
    :cond_2
    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    .line 254
    .end local v1    # "ssaRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    .end local v2    # "sz":I
    .end local v3    # "paramIndex":I
    .end local v4    # "paramCategory":I
    goto :goto_0

    .line 255
    :cond_3
    return-void
.end method

.method private handleNormalUnassociated()V
    .locals 6

    .line 622
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 624
    .local v0, "szSsaRegs":I
    const/4 v1, 0x0

    .local v1, "ssaReg":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 625
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    goto :goto_2

    .line 630
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 632
    .local v2, "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v2, :cond_1

    goto :goto_2

    .line 634
    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    .line 636
    .local v3, "category":I
    iget v4, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v4, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v4

    .line 637
    .local v4, "ropReg":I
    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 638
    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v5, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v4

    goto :goto_1

    .line 641
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    .line 624
    .end local v2    # "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v3    # "category":I
    .end local v4    # "ropReg":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    .end local v1    # "ssaReg":I
    :cond_3
    return-void
.end method

.method private handlePhiInsns()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->phiInsns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/PhiInsn;

    .line 614
    .local v1, "insn":Lcom/android/dx/ssa/PhiInsn;
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V

    .line 615
    .end local v1    # "insn":Lcom/android/dx/ssa/PhiInsn;
    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method private handleUnassociatedParameters()V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 506
    .local v0, "szSsaRegs":I
    const/4 v1, 0x0

    .local v1, "ssaReg":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 507
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    goto :goto_1

    .line 512
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getParameterIndexForReg(I)I

    move-result v2

    .line 514
    .local v2, "paramIndex":I
    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 515
    .local v3, "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    if-ltz v2, :cond_1

    .line 516
    invoke-direct {p0, v3, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    .line 506
    .end local v2    # "paramIndex":I
    .end local v3    # "ssaSpec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "ssaReg":I
    :cond_2
    return-void
.end method

.method private static isEven(I)Z
    .locals 1
    .param p0, "regNumger"    # I

    .line 1187
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThisPointerReg(I)Z
    .locals 1
    .param p1, "startReg"    # I

    .line 409
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private markReserved(II)V
    .locals 3
    .param p1, "ropReg"    # I
    .param p2, "category"    # I

    .line 380
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    add-int v1, p1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/BitSet;->set(IIZ)V

    .line 381
    return-void
.end method

.method private printLocalVars()V
    .locals 7

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Printing local vars"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->localVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/rop/code/LocalItem;Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v2, "regs":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/rop/code/RegisterSpec;

    .line 215
    .local v5, "reg":Lcom/android/dx/rop/code/RegisterSpec;
    const/16 v6, 0x76

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .end local v5    # "reg":Lcom/android/dx/rop/code/RegisterSpec;
    goto :goto_1

    .line 219
    :cond_0
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Local: %s Registers: %s\n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 221
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/rop/code/LocalItem;Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;>;"
    .end local v2    # "regs":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 222
    :cond_1
    return-void
.end method

.method private processPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 13
    .param p1, "insn"    # Lcom/android/dx/ssa/PhiInsn;

    .line 1133
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 1134
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 1135
    .local v1, "resultReg":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v2

    .line 1137
    .local v2, "category":I
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 1138
    .local v3, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 1141
    .local v4, "sourcesSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v5, "ssaRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    new-instance v6, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;

    add-int/lit8 v7, v4, 0x1

    invoke-direct {v6, v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;-><init>(I)V

    .line 1150
    .local v6, "mapSet":Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;
    iget-object v7, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v7, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1151
    iget-object v7, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v7, v1}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_2

    .line 1157
    invoke-virtual {v3, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 1158
    .local v8, "source":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v9

    .line 1159
    .local v9, "def":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 1160
    .local v10, "sourceDef":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    .line 1166
    .local v11, "sourceReg":I
    iget-object v12, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v12, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1167
    iget-object v12, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    invoke-virtual {v12, v11}, Lcom/android/dx/ssa/InterferenceRegisterMapper;->oldToNew(I)I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->add(I)V

    goto :goto_2

    .line 1169
    :cond_1
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    .end local v8    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v9    # "def":Lcom/android/dx/ssa/SsaInsn;
    .end local v10    # "sourceDef":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v11    # "sourceReg":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1174
    .end local v7    # "i":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    invoke-virtual {v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getSize()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_3

    .line 1175
    invoke-virtual {v6}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->getAndRemoveHighestCount()I

    move-result v8

    .line 1176
    .local v8, "maxReg":I
    invoke-direct {p0, v5, v8, v2, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    .line 1174
    .end local v8    # "maxReg":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1180
    .end local v7    # "i":I
    :cond_3
    iget v7, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    invoke-direct {p0, v7, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v7

    .line 1181
    .local v7, "mapReg":I
    :goto_4
    invoke-direct {p0, v5, v7, v2, v9}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapRegs(Ljava/util/ArrayList;IIZ)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1182
    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0, v8, v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->findNextUnreservedRopReg(II)I

    move-result v7

    goto :goto_4

    .line 1184
    :cond_4
    return-void
.end method

.method private rangeContainsReserved(II)Z
    .locals 2
    .param p1, "ropRangeStart"    # I
    .param p2, "width"    # I

    .line 392
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->reservedRopRegs:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const/4 v1, 0x1

    return v1

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private spansParamRange(II)Z
    .locals 2
    .param p1, "ssaReg"    # I
    .param p2, "category"    # I

    .line 690
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->paramRangeEnd:I

    if-ge p1, v0, :cond_0

    add-int v1, p1, p2

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z
    .locals 2
    .param p1, "ssaSpec"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "ropReg"    # I
    .param p3, "maxAllowedCategory"    # I

    .line 363
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    if-gt v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    .line 364
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->canMapReg(Lcom/android/dx/rop/code/RegisterSpec;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->addMapping(Lcom/android/dx/rop/code/RegisterSpec;I)V

    .line 367
    const/4 v0, 0x1

    return v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private tryMapRegs(Ljava/util/ArrayList;IIZ)Z
    .locals 7
    .param p2, "ropReg"    # I
    .param p3, "maxAllowedCategory"    # I
    .param p4, "markReserved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;IIZ)Z"
        }
    .end annotation

    .line 334
    .local p1, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    const/4 v0, 0x0

    .line 335
    .local v0, "remaining":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/RegisterSpec;

    .line 336
    .local v2, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->ssaRegsMapped:Ljava/util/BitSet;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    goto :goto_0

    .line 341
    :cond_0
    invoke-direct {p0, v2, p2, p3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->tryMapReg(Lcom/android/dx/rop/code/RegisterSpec;II)Z

    move-result v5

    .line 342
    .local v5, "succeeded":Z
    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    move v0, v3

    .line 343
    if-eqz v5, :cond_3

    if-eqz p4, :cond_3

    .line 346
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->markReserved(II)V

    .line 348
    .end local v2    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v5    # "succeeded":Z
    :cond_3
    goto :goto_0

    .line 349
    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    return v3
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V

    .line 178
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedParams()V

    .line 181
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleUnassociatedParameters()V

    .line 184
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleInvokeRangeInsns()V

    .line 189
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleLocalAssociatedOther()V

    .line 192
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleCheckCastResults()V

    .line 195
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handlePhiInsns()V

    .line 198
    invoke-direct {p0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->handleNormalUnassociated()V

    .line 200
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->mapper:Lcom/android/dx/ssa/InterferenceRegisterMapper;

    return-object v0
.end method

.method ssaSetToSpecs(Lcom/android/dx/util/IntSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 5
    .param p1, "ssaSet"    # Lcom/android/dx/util/IntSet;

    .line 1096
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->elements()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 1098
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object v1

    .line 1100
    .local v1, "iter":Lcom/android/dx/util/IntIterator;
    const/4 v2, 0x0

    .line 1101
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1102
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v1}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->getDefinitionSpecForSsaReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    move v2, v3

    goto :goto_0

    .line 1105
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method
