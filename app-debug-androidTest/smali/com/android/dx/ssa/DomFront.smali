.class public Lcom/android/dx/ssa/DomFront;
.super Ljava/lang/Object;
.source "DomFront.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/DomFront$DomInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

.field private final meth:Lcom/android/dx/ssa/SsaMethod;

.field private final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 4
    .param p1, "meth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/dx/ssa/DomFront;->meth:Lcom/android/dx/ssa/SsaMethod;

    .line 60
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    .local v0, "szNodes":I
    new-array v1, v0, [Lcom/android/dx/ssa/DomFront$DomInfo;

    iput-object v1, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    new-instance v3, Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-direct {v3}, Lcom/android/dx/ssa/DomFront$DomInfo;-><init>()V

    aput-object v3, v2, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private buildDomTree()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 150
    .local v0, "szNodes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    aget-object v2, v2, v1

    .line 153
    .local v2, "info":Lcom/android/dx/ssa/DomFront$DomInfo;
    iget v3, v2, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 156
    .local v3, "domParent":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v4, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaBasicBlock;->addDomChild(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 150
    .end local v2    # "info":Lcom/android/dx/ssa/DomFront$DomInfo;
    .end local v3    # "domParent":Lcom/android/dx/ssa/SsaBasicBlock;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private calcDomFronts()V
    .locals 9

    .line 166
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 168
    .local v0, "szNodes":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 169
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 170
    .local v2, "nb":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v3, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    aget-object v3, v3, v1

    .line 171
    .local v3, "nbInfo":Lcom/android/dx/ssa/DomFront$DomInfo;
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v4

    .line 173
    .local v4, "pred":Ljava/util/BitSet;
    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 174
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_3

    .line 177
    move v6, v5

    .line 178
    .local v6, "runnerIndex":I
    :goto_2
    iget v7, v3, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    if-eq v6, v7, :cond_2

    .line 184
    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    goto :goto_3

    .line 186
    :cond_0
    iget-object v7, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    aget-object v7, v7, v6

    .line 188
    .local v7, "runnerInfo":Lcom/android/dx/ssa/DomFront$DomInfo;
    iget-object v8, v7, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    invoke-interface {v8, v1}, Lcom/android/dx/util/IntSet;->has(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 189
    goto :goto_3

    .line 193
    :cond_1
    iget-object v8, v7, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    invoke-interface {v8, v1}, Lcom/android/dx/util/IntSet;->add(I)V

    .line 194
    iget v6, v7, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    .line 195
    .end local v7    # "runnerInfo":Lcom/android/dx/ssa/DomFront$DomInfo;
    goto :goto_2

    .line 175
    .end local v6    # "runnerIndex":I
    :cond_2
    :goto_3
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_1

    .line 168
    .end local v2    # "nb":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v3    # "nbInfo":Lcom/android/dx/ssa/DomFront$DomInfo;
    .end local v4    # "pred":Ljava/util/BitSet;
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "b":I
    :cond_4
    return-void
.end method

.method private debugPrintDomChildren()V
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 122
    .local v0, "szNodes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 123
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 124
    .local v2, "node":Lcom/android/dx/ssa/SsaBasicBlock;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, "comma":Z
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 129
    .local v6, "child":Lcom/android/dx/ssa/SsaBasicBlock;
    if-eqz v4, :cond_0

    .line 130
    const/16 v7, 0x2c

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 133
    const/4 v4, 0x1

    .line 134
    .end local v6    # "child":Lcom/android/dx/ssa/SsaBasicBlock;
    goto :goto_1

    .line 135
    :cond_1
    const/16 v5, 0x7d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domChildren["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    .end local v2    # "node":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "comma":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public run()[Lcom/android/dx/ssa/DomFront$DomInfo;
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 86
    .local v0, "szNodes":I
    iget-object v1, p0, Lcom/android/dx/ssa/DomFront;->meth:Lcom/android/dx/ssa/SsaMethod;

    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/dx/ssa/Dominators;->make(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)Lcom/android/dx/ssa/Dominators;

    move-result-object v1

    .line 96
    .local v1, "methDom":Lcom/android/dx/ssa/Dominators;
    invoke-direct {p0}, Lcom/android/dx/ssa/DomFront;->buildDomTree()V

    .line 102
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    aget-object v3, v3, v2

    .line 104
    invoke-static {v0}, Lcom/android/dx/ssa/SetFactory;->makeDomFrontSet(I)Lcom/android/dx/util/IntSet;

    move-result-object v4

    iput-object v4, v3, Lcom/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/android/dx/util/IntSet;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/ssa/DomFront;->calcDomFronts()V

    .line 116
    iget-object v2, p0, Lcom/android/dx/ssa/DomFront;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    return-object v2
.end method
