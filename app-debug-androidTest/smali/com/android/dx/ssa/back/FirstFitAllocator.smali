.class public Lcom/android/dx/ssa/back/FirstFitAllocator;
.super Lcom/android/dx/ssa/back/RegisterAllocator;
.source "FirstFitAllocator.java"


# static fields
.field private static final PRESLOT_PARAMS:Z = true


# instance fields
.field private final mapped:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V
    .locals 2
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p2, "interference"    # Lcom/android/dx/ssa/back/InterferenceGraph;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/back/RegisterAllocator;-><init>(Lcom/android/dx/ssa/SsaMethod;Lcom/android/dx/ssa/back/InterferenceGraph;)V

    .line 49
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    .line 50
    return-void
.end method

.method private paramNumberFromMoveParam(Lcom/android/dx/ssa/NormalSsaInsn;)I
    .locals 2
    .param p1, "ndefInsn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 145
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/CstInsn;

    .line 147
    .local v0, "origInsn":Lcom/android/dx/rop/code/CstInsn;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public allocateRegisters()Lcom/android/dx/ssa/RegisterMapper;
    .locals 10

    .line 61
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 63
    .local v0, "oldRegCount":I
    new-instance v1, Lcom/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v1, v0}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 66
    .local v1, "mapper":Lcom/android/dx/ssa/BasicRegisterMapper;
    const/4 v2, 0x0

    .line 75
    .local v2, "nextNewRegister":I
    iget-object v3, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaMethod;->getParamWidth()I

    move-result v2

    .line 78
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 79
    iget-object v4, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    goto/16 :goto_4

    .line 84
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v4

    .line 85
    .local v4, "maxCategory":I
    new-instance v5, Lcom/android/dx/util/BitIntSet;

    invoke-direct {v5, v0}, Lcom/android/dx/util/BitIntSet;-><init>(I)V

    .line 87
    .local v5, "current":Lcom/android/dx/util/IntSet;
    iget-object v6, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v6, v3, v5}, Lcom/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, "isPreslotted":Z
    const/4 v7, 0x0

    .line 92
    .local v7, "newReg":I
    invoke-virtual {p0, v3}, Lcom/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 94
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 95
    invoke-virtual {v8, v3}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v8

    check-cast v8, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 97
    .local v8, "defInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-direct {p0, v8}, Lcom/android/dx/ssa/back/FirstFitAllocator;->paramNumberFromMoveParam(Lcom/android/dx/ssa/NormalSsaInsn;)I

    move-result v7

    .line 99
    invoke-virtual {v1, v3, v7, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 100
    const/4 v6, 0x1

    .line 101
    .end local v8    # "defInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 103
    move v7, v2

    .line 106
    :goto_1
    add-int/lit8 v8, v3, 0x1

    .local v8, "j":I
    :goto_2
    if-ge v8, v0, :cond_5

    .line 107
    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/dx/ssa/back/FirstFitAllocator;->isDefinitionMoveParam(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 108
    goto :goto_3

    .line 116
    :cond_2
    invoke-interface {v5, v8}, Lcom/android/dx/util/IntSet;->has(I)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v6, :cond_3

    .line 118
    invoke-virtual {p0, v8}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v9

    if-lt v4, v9, :cond_4

    .line 120
    :cond_3
    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->interference:Lcom/android/dx/ssa/back/InterferenceGraph;

    invoke-virtual {v9, v8, v5}, Lcom/android/dx/ssa/back/InterferenceGraph;->mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V

    .line 122
    nop

    .line 123
    invoke-virtual {p0, v8}, Lcom/android/dx/ssa/back/FirstFitAllocator;->getCategoryForSsaReg(I)I

    move-result v9

    .line 122
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 125
    invoke-virtual {v1, v8, v7, v4}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 126
    iget-object v9, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    .line 106
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 130
    .end local v8    # "j":I
    :cond_5
    iget-object v8, p0, Lcom/android/dx/ssa/back/FirstFitAllocator;->mapped:Ljava/util/BitSet;

    invoke-virtual {v8, v3}, Ljava/util/BitSet;->set(I)V

    .line 131
    if-nez v6, :cond_6

    .line 132
    add-int/2addr v2, v4

    .line 78
    .end local v4    # "maxCategory":I
    .end local v5    # "current":Lcom/android/dx/util/IntSet;
    .end local v6    # "isPreslotted":Z
    .end local v7    # "newReg":I
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "i":I
    :cond_7
    return-object v1
.end method

.method public wantsParamsMovedHigh()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method
