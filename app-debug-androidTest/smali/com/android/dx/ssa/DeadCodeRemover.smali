.class public Lcom/android/dx/ssa/DeadCodeRemover;
.super Ljava/lang/Object;
.source "DeadCodeRemover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;
    }
.end annotation


# instance fields
.field private final regCount:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final useList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 2
    .param p1, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 65
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    .line 66
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    .line 67
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/SsaInsn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaInsn;

    .line 31
    invoke-static {p0}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v0

    return v0
.end method

.method private static hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z
    .locals 1
    .param p0, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 216
    if-nez p0, :cond_0

    .line 220
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaInsn;->hasSideEffect()Z

    move-result v0

    return v0
.end method

.method private isCircularNoSideEffect(ILjava/util/BitSet;)Z
    .locals 6
    .param p1, "regV"    # I
    .param p2, "set"    # Ljava/util/BitSet;

    .line 179
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    return v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaInsn;

    .line 184
    .local v2, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-static {v2}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    return v3

    .line 187
    .end local v2    # "use":Lcom/android/dx/ssa/SsaInsn;
    :cond_1
    goto :goto_0

    .line 189
    :cond_2
    if-nez p2, :cond_3

    .line 190
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/android/dx/ssa/DeadCodeRemover;->regCount:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    move-object p2, v1

    .line 194
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 196
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaInsn;

    .line 197
    .restart local v2    # "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 199
    .local v4, "result":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v4, :cond_5

    .line 200
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lcom/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 203
    .end local v2    # "use":Lcom/android/dx/ssa/SsaInsn;
    .end local v4    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    goto :goto_1

    .line 201
    .restart local v2    # "use":Lcom/android/dx/ssa/SsaInsn;
    .restart local v4    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_5
    :goto_2
    return v3

    .line 205
    .end local v2    # "use":Lcom/android/dx/ssa/SsaInsn;
    .end local v4    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_6
    return v0
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1
    .param p0, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 53
    new-instance v0, Lcom/android/dx/ssa/DeadCodeRemover;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/DeadCodeRemover;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 54
    .local v0, "dc":Lcom/android/dx/ssa/DeadCodeRemover;
    invoke-direct {v0}, Lcom/android/dx/ssa/DeadCodeRemover;->run()V

    .line 55
    return-void
.end method

.method private pruneDeadInstructions()V
    .locals 13

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    .local v0, "deletedInsns":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaInsn;>;"
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->computeReachability()Ljava/util/BitSet;

    move-result-object v1

    .line 129
    .local v1, "reachable":Ljava/util/BitSet;
    iget-object v2, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v2

    .line 130
    .local v2, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    const/4 v3, 0x0

    .line 132
    .local v3, "blockIndex":I
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    move v3, v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 133
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 134
    .local v4, "block":Lcom/android/dx/ssa/SsaBasicBlock;
    add-int/lit8 v3, v3, 0x1

    .line 137
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 138
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaInsn;

    .line 139
    .local v6, "insn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 140
    .local v7, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    .line 143
    .local v8, "sourcesSize":I
    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v8, :cond_1

    .line 149
    invoke-virtual {v7, v9}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 150
    .local v10, "source":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v11, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    .end local v10    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 154
    .end local v9    # "j":I
    :cond_1
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 155
    .local v9, "result":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v9, :cond_2

    goto :goto_4

    .line 156
    :cond_2
    iget-object v10, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/dx/ssa/SsaInsn;

    .line 157
    .local v11, "use":Lcom/android/dx/ssa/SsaInsn;
    instance-of v12, v11, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v12, :cond_3

    .line 158
    move-object v12, v11

    check-cast v12, Lcom/android/dx/ssa/PhiInsn;

    .line 159
    .local v12, "phiUse":Lcom/android/dx/ssa/PhiInsn;
    invoke-virtual {v12, v9}, Lcom/android/dx/ssa/PhiInsn;->removePhiRegister(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 161
    .end local v11    # "use":Lcom/android/dx/ssa/SsaInsn;
    .end local v12    # "phiUse":Lcom/android/dx/ssa/PhiInsn;
    :cond_3
    goto :goto_3

    .line 137
    .end local v6    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v7    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v8    # "sourcesSize":I
    .end local v9    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 163
    .end local v4    # "block":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v5    # "i":I
    :cond_5
    goto :goto_0

    .line 165
    :cond_6
    iget-object v4, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v4, v0}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    .line 166
    return-void
.end method

.method private run()V
    .locals 9

    .line 74
    invoke-direct {p0}, Lcom/android/dx/ssa/DeadCodeRemover;->pruneDeadInstructions()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v0, "deletedInsns":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaInsn;>;"
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v2, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;

    iget-object v3, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-direct {v2, v3}, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;-><init>(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 82
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    .local v2, "regV":I
    if-ltz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 85
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/dx/ssa/DeadCodeRemover;->isCircularNoSideEffect(ILjava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 91
    .local v1, "insnS":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 97
    .local v3, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 98
    .local v4, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 100
    invoke-virtual {v3, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 101
    .local v6, "source":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->useList:[Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 105
    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    .line 104
    invoke-virtual {v7, v8}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v7

    .line 103
    invoke-static {v7}, Lcom/android/dx/ssa/DeadCodeRemover;->hasSideEffect(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 110
    iget-object v7, p0, Lcom/android/dx/ssa/DeadCodeRemover;->worklist:Ljava/util/BitSet;

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 98
    .end local v6    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 115
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v1    # "insnS":Lcom/android/dx/ssa/SsaInsn;
    .end local v3    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v4    # "sz":I
    goto :goto_0

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    .line 120
    return-void
.end method
