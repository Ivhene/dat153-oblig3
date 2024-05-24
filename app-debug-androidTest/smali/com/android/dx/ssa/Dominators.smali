.class public final Lcom/android/dx/ssa/Dominators;
.super Ljava/lang/Object;
.source "Dominators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/Dominators$DFSInfo;,
        Lcom/android/dx/ssa/Dominators$DfsWalker;
    }
.end annotation


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

.field private final domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

.field private final info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

.field private final meth:Lcom/android/dx/ssa/SsaMethod;

.field private final postdom:Z

.field private final vertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)V
    .locals 1
    .param p1, "meth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p2, "domInfos"    # [Lcom/android/dx/ssa/DomFront$DomInfo;
    .param p3, "postdom"    # Z

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    .line 71
    iput-object p2, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    .line 72
    iput-boolean p3, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    .line 73
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/android/dx/ssa/Dominators$DFSInfo;

    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/Dominators;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/Dominators;

    .line 43
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/Dominators;)[Lcom/android/dx/ssa/Dominators$DFSInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/Dominators;

    .line 43
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    return-object v0
.end method

.method private compress(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 14
    .param p1, "in"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 116
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 117
    .local v0, "bbInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    iget-object v2, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    .line 119
    .local v1, "ancestorbbInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    iget-object v2, v1, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-eqz v2, :cond_3

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "worklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v3, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 125
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 126
    .local v4, "wsize":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 127
    .local v5, "v":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v6, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v7

    aget-object v6, v6, v7

    .line 128
    .local v6, "vbbInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    iget-object v7, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 129
    .local v7, "vAncestor":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v7}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v9

    aget-object v8, v8, v9

    .line 132
    .local v8, "vabbInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-eqz v9, :cond_0

    .line 133
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_0

    .line 136
    :cond_0
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 139
    iget-object v9, v8, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-nez v9, :cond_1

    .line 140
    goto :goto_0

    .line 142
    :cond_1
    iget-object v9, v8, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 143
    .local v9, "vAncestorRep":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v10, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 144
    .local v10, "vRep":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v11, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v12

    aget-object v11, v11, v12

    iget v11, v11, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    iget-object v12, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 145
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v13

    aget-object v12, v12, v13

    iget v12, v12, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    if-ge v11, v12, :cond_2

    .line 146
    iput-object v9, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 148
    :cond_2
    iget-object v11, v8, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    iput-object v11, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 149
    .end local v4    # "wsize":I
    .end local v5    # "v":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v6    # "vbbInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    .end local v7    # "vAncestor":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v8    # "vabbInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    .end local v9    # "vAncestorRep":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v10    # "vRep":Lcom/android/dx/ssa/SsaBasicBlock;
    goto :goto_0

    .line 151
    .end local v2    # "worklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    .end local v3    # "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    :cond_3
    return-void
.end method

.method private eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 2
    .param p1, "v"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 154
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 156
    .local v0, "bbInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    iget-object v1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-nez v1, :cond_0

    .line 157
    return-object p1

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/Dominators;->compress(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 161
    iget-object v1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    return-object v1
.end method

.method private getPreds(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;
    .locals 1
    .param p1, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 103
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method private getSuccs(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;
    .locals 1
    .param p1, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 95
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)Lcom/android/dx/ssa/Dominators;
    .locals 1
    .param p0, "meth"    # Lcom/android/dx/ssa/SsaMethod;
    .param p1, "domInfos"    # [Lcom/android/dx/ssa/DomFront$DomInfo;
    .param p2, "postdom"    # Z

    .line 88
    new-instance v0, Lcom/android/dx/ssa/Dominators;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dx/ssa/Dominators;-><init>(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)V

    .line 90
    .local v0, "result":Lcom/android/dx/ssa/Dominators;
    invoke-direct {v0}, Lcom/android/dx/ssa/Dominators;->run()V

    .line 91
    return-object v0
.end method

.method private run()V
    .locals 14

    .line 171
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    .line 172
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 174
    .local v0, "root":Lcom/android/dx/ssa/SsaBasicBlock;
    :goto_0
    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    iput v2, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    .line 184
    :cond_1
    new-instance v1, Lcom/android/dx/ssa/Dominators$DfsWalker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dx/ssa/Dominators$DfsWalker;-><init>(Lcom/android/dx/ssa/Dominators;Lcom/android/dx/ssa/Dominators$1;)V

    .line 185
    .local v1, "walker":Lcom/android/dx/ssa/Dominators$DfsWalker;
    iget-object v2, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    iget-boolean v3, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    invoke-virtual {v2, v3, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirst(ZLcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    .line 188
    iget-object v2, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 191
    .local v2, "dfsMax":I
    move v3, v2

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    .line 192
    iget-object v4, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 193
    .local v4, "w":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    aget-object v5, v5, v6

    .line 195
    .local v5, "wInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    invoke-direct {p0, v4}, Lcom/android/dx/ssa/Dominators;->getPreds(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;

    move-result-object v6

    .line 196
    .local v6, "preds":Ljava/util/BitSet;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    .line 197
    .local v7, "j":I
    :goto_2
    if-ltz v7, :cond_3

    .line 199
    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 200
    .local v8, "predBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v9, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v10

    aget-object v9, v9, v10

    .line 206
    .local v9, "predInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    if-eqz v9, :cond_2

    .line 207
    iget-object v10, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-direct {p0, v8}, Lcom/android/dx/ssa/Dominators;->eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v11

    aget-object v10, v10, v11

    iget v10, v10, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    .line 208
    .local v10, "predSemidom":I
    iget v11, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    if-ge v10, v11, :cond_2

    .line 209
    iput v10, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    .line 198
    .end local v8    # "predBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v9    # "predInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    .end local v10    # "predSemidom":I
    :cond_2
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    goto :goto_2

    .line 213
    .end local v7    # "j":I
    :cond_3
    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    iget v9, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/dx/ssa/Dominators$DFSInfo;->bucket:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v7, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    iput-object v7, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 224
    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    iget-object v8, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v8}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/dx/ssa/Dominators$DFSInfo;->bucket:Ljava/util/ArrayList;

    .line 226
    .local v7, "wParentBucket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 227
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 228
    .local v8, "lastItem":I
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 229
    .local v9, "last":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-direct {p0, v9}, Lcom/android/dx/ssa/Dominators;->eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v10

    .line 230
    .local v10, "U":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v11, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v12

    aget-object v11, v11, v12

    iget v11, v11, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    iget-object v12, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 231
    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v13

    aget-object v12, v12, v13

    iget v12, v12, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    if-ge v11, v12, :cond_4

    .line 232
    iget-object v11, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v12

    iput v12, v11, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    goto :goto_4

    .line 234
    :cond_4
    iget-object v11, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v12

    aget-object v11, v11, v12

    iget-object v12, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v12}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v12

    iput v12, v11, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    .line 236
    .end local v8    # "lastItem":I
    .end local v9    # "last":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v10    # "U":Lcom/android/dx/ssa/SsaBasicBlock;
    :goto_4
    goto :goto_3

    .line 191
    .end local v4    # "w":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v5    # "wInfo":Lcom/android/dx/ssa/Dominators$DFSInfo;
    .end local v6    # "preds":Ljava/util/BitSet;
    .end local v7    # "wParentBucket":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 240
    .end local v3    # "i":I
    :cond_6
    const/4 v3, 0x2

    .restart local v3    # "i":I
    :goto_5
    if-gt v3, v2, :cond_8

    .line 241
    iget-object v4, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 242
    .restart local v4    # "w":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    iget-object v6, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 243
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 244
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    .line 245
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v7

    aget-object v7, v6, v7

    iget v7, v7, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    aget-object v6, v6, v7

    iget v6, v6, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    iput v6, v5, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    .line 240
    .end local v4    # "w":Lcom/android/dx/ssa/SsaBasicBlock;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 248
    .end local v3    # "i":I
    :cond_8
    return-void
.end method
