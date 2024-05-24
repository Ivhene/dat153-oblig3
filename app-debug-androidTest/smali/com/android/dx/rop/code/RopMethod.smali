.class public final Lcom/android/dx/rop/code/RopMethod;
.super Ljava/lang/Object;
.source "RopMethod.java"


# instance fields
.field private final blocks:Lcom/android/dx/rop/code/BasicBlockList;

.field private exitPredecessors:Lcom/android/dx/util/IntList;

.field private final firstLabel:I

.field private predecessors:[Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/BasicBlockList;I)V
    .locals 2
    .param p1, "blocks"    # Lcom/android/dx/rop/code/BasicBlockList;
    .param p2, "firstLabel"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_1

    .line 55
    if-ltz p2, :cond_0

    .line 59
    iput-object p1, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    .line 60
    iput p2, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    .line 63
    iput-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    .line 64
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstLabel < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "blocks == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calcPredecessors()V
    .locals 14

    .line 151
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v0

    .line 152
    .local v0, "maxLabel":I
    new-array v1, v0, [Lcom/android/dx/util/IntList;

    .line 153
    .local v1, "predecessors":[Lcom/android/dx/util/IntList;
    new-instance v2, Lcom/android/dx/util/IntList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 154
    .local v2, "exitPredecessors":Lcom/android/dx/util/IntList;
    iget-object v4, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v4

    .line 160
    .local v4, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 161
    iget-object v6, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v6, v5}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v6

    .line 162
    .local v6, "one":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v6}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v7

    .line 163
    .local v7, "label":I
    invoke-virtual {v6}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v8

    .line 164
    .local v8, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v8}, Lcom/android/dx/util/IntList;->size()I

    move-result v9

    .line 165
    .local v9, "ssz":I
    if-nez v9, :cond_0

    .line 167
    invoke-virtual {v2, v7}, Lcom/android/dx/util/IntList;->add(I)V

    goto :goto_2

    .line 169
    :cond_0
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v9, :cond_2

    .line 170
    invoke-virtual {v8, v10}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 171
    .local v11, "succLabel":I
    aget-object v12, v1, v11

    .line 172
    .local v12, "succPreds":Lcom/android/dx/util/IntList;
    if-nez v12, :cond_1

    .line 173
    new-instance v13, Lcom/android/dx/util/IntList;

    invoke-direct {v13, v3}, Lcom/android/dx/util/IntList;-><init>(I)V

    move-object v12, v13

    .line 174
    aput-object v12, v1, v11

    .line 176
    :cond_1
    invoke-virtual {v12, v7}, Lcom/android/dx/util/IntList;->add(I)V

    .line 169
    .end local v11    # "succLabel":I
    .end local v12    # "succPreds":Lcom/android/dx/util/IntList;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 160
    .end local v6    # "one":Lcom/android/dx/rop/code/BasicBlock;
    .end local v7    # "label":I
    .end local v8    # "successors":Lcom/android/dx/util/IntList;
    .end local v9    # "ssz":I
    .end local v10    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v0, :cond_5

    .line 183
    aget-object v5, v1, v3

    .line 184
    .local v5, "preds":Lcom/android/dx/util/IntList;
    if-eqz v5, :cond_4

    .line 185
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->sort()V

    .line 186
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 182
    .end local v5    # "preds":Lcom/android/dx/util/IntList;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 190
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->sort()V

    .line 191
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 199
    iget v3, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    aget-object v5, v1, v3

    if-nez v5, :cond_6

    .line 200
    sget-object v5, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    aput-object v5, v1, v3

    .line 203
    :cond_6
    iput-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    .line 204
    iput-object v2, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    .line 205
    return-void
.end method


# virtual methods
.method public getBlocks()Lcom/android/dx/rop/code/BasicBlockList;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    return-object v0
.end method

.method public getExitPredecessors()Lcom/android/dx/util/IntList;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    return-object v0
.end method

.method public getFirstLabel()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    return v0
.end method

.method public labelToPredecessors(I)Lcom/android/dx/util/IntList;
    .locals 4
    .param p1, "label"    # I

    .line 93
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/dx/rop/code/RopMethod;->calcPredecessors()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    aget-object v0, v0, p1

    .line 99
    .local v0, "result":Lcom/android/dx/util/IntList;
    if-eqz v0, :cond_1

    .line 103
    return-object v0

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such block: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/RopMethod;
    .locals 3
    .param p1, "delta"    # I

    .line 129
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->blocks:Lcom/android/dx/rop/code/BasicBlockList;

    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/BasicBlockList;->withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    iget v2, p0, Lcom/android/dx/rop/code/RopMethod;->firstLabel:I

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    .line 132
    .local v0, "result":Lcom/android/dx/rop/code/RopMethod;
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    if-eqz v1, :cond_0

    .line 139
    iput-object v1, v0, Lcom/android/dx/rop/code/RopMethod;->exitPredecessors:Lcom/android/dx/util/IntList;

    .line 140
    iget-object v1, p0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    iput-object v1, v0, Lcom/android/dx/rop/code/RopMethod;->predecessors:[Lcom/android/dx/util/IntList;

    .line 143
    :cond_0
    return-object v0
.end method
