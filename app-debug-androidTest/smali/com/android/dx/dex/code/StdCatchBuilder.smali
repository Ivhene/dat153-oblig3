.class public final Lcom/android/dx/dex/code/StdCatchBuilder;
.super Ljava/lang/Object;
.source "StdCatchBuilder.java"

# interfaces
.implements Lcom/android/dx/dex/code/CatchBuilder;


# static fields
.field private static final MAX_CATCH_RANGE:I = 0xffff


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private final order:[I


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)V
    .locals 2
    .param p1, "method"    # Lcom/android/dx/rop/code/RopMethod;
    .param p2, "order"    # [I
    .param p3, "addresses"    # Lcom/android/dx/dex/code/BlockAddresses;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_2

    .line 60
    if-eqz p2, :cond_1

    .line 64
    if-eqz p3, :cond_0

    .line 68
    iput-object p1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    .line 69
    iput-object p2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    .line 70
    iput-object p3, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    .line 71
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addresses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static build(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;
    .locals 10
    .param p0, "method"    # Lcom/android/dx/rop/code/RopMethod;
    .param p1, "order"    # [I
    .param p2, "addresses"    # Lcom/android/dx/dex/code/BlockAddresses;

    .line 126
    array-length v0, p1

    .line 127
    .local v0, "len":I
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 128
    .local v1, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/dex/code/CatchTable$Entry;>;"
    sget-object v3, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    .line 131
    .local v3, "currentHandlers":Lcom/android/dx/dex/code/CatchHandlerList;
    const/4 v4, 0x0

    .line 132
    .local v4, "currentStartBlock":Lcom/android/dx/rop/code/BasicBlock;
    const/4 v5, 0x0

    .line 134
    .local v5, "currentEndBlock":Lcom/android/dx/rop/code/BasicBlock;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 135
    aget v7, p1, v6

    invoke-virtual {v1, v7}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 137
    .local v7, "block":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/BasicBlock;->canThrow()Z

    move-result v8

    if-nez v8, :cond_0

    .line 143
    goto :goto_1

    .line 146
    :cond_0
    invoke-static {v7, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->handlersFor(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v8

    .line 148
    .local v8, "handlers":Lcom/android/dx/dex/code/CatchHandlerList;
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 150
    move-object v4, v7

    .line 151
    move-object v5, v7

    .line 152
    move-object v3, v8

    .line 153
    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v3, v8}, Lcom/android/dx/dex/code/CatchHandlerList;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 157
    invoke-static {v4, v7, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->rangeIsValid(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 164
    move-object v5, v7

    .line 165
    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v9

    if-eqz v9, :cond_3

    .line 174
    nop

    .line 175
    invoke-static {v4, v5, v3, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v9

    .line 177
    .local v9, "entry":Lcom/android/dx/dex/code/CatchTable$Entry;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v9    # "entry":Lcom/android/dx/dex/code/CatchTable$Entry;
    :cond_3
    move-object v4, v7

    .line 181
    move-object v5, v7

    .line 182
    move-object v3, v8

    .line 134
    .end local v7    # "block":Lcom/android/dx/rop/code/BasicBlock;
    .end local v8    # "handlers":Lcom/android/dx/dex/code/CatchHandlerList;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 185
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    nop

    .line 188
    invoke-static {v4, v5, v3, p2}, Lcom/android/dx/dex/code/StdCatchBuilder;->makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v6

    .line 190
    .local v6, "entry":Lcom/android/dx/dex/code/CatchTable$Entry;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v6    # "entry":Lcom/android/dx/dex/code/CatchTable$Entry;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 197
    .local v6, "resultSz":I
    if-nez v6, :cond_6

    .line 198
    sget-object v7, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

    return-object v7

    .line 201
    :cond_6
    new-instance v7, Lcom/android/dx/dex/code/CatchTable;

    invoke-direct {v7, v6}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    .line 203
    .local v7, "result":Lcom/android/dx/dex/code/CatchTable;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_7

    .line 204
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v7, v8, v9}, Lcom/android/dx/dex/code/CatchTable;->set(ILcom/android/dx/dex/code/CatchTable$Entry;)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 207
    .end local v8    # "i":I
    :cond_7
    invoke-virtual {v7}, Lcom/android/dx/dex/code/CatchTable;->setImmutable()V

    .line 208
    return-object v7
.end method

.method private static handlersFor(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchHandlerList;
    .locals 10
    .param p0, "block"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p1, "addresses"    # Lcom/android/dx/dex/code/BlockAddresses;

    .line 220
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 221
    .local v0, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    .line 222
    .local v1, "succSize":I
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v2

    .line 223
    .local v2, "primary":I
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v3

    .line 224
    .local v3, "catches":Lcom/android/dx/rop/type/TypeList;
    invoke-interface {v3}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v4

    .line 226
    .local v4, "catchSize":I
    if-nez v4, :cond_0

    .line 227
    sget-object v5, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

    return-object v5

    .line 230
    :cond_0
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    if-eq v2, v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    if-ne v1, v5, :cond_2

    .line 233
    invoke-virtual {v0, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "shouldn\'t happen: weird successors list"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_3
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 248
    invoke-interface {v3, v5}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v6

    .line 249
    .local v6, "type":Lcom/android/dx/rop/type/Type;
    sget-object v7, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-virtual {v6, v7}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 250
    add-int/lit8 v4, v5, 0x1

    .line 251
    goto :goto_2

    .line 247
    .end local v6    # "type":Lcom/android/dx/rop/type/Type;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 255
    .end local v5    # "i":I
    :cond_5
    :goto_2
    new-instance v5, Lcom/android/dx/dex/code/CatchHandlerList;

    invoke-direct {v5, v4}, Lcom/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    .line 257
    .local v5, "result":Lcom/android/dx/dex/code/CatchHandlerList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v4, :cond_6

    .line 258
    new-instance v7, Lcom/android/dx/rop/cst/CstType;

    invoke-interface {v3, v6}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    .line 259
    .local v7, "oneType":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual {v0, v6}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v8

    .line 260
    .local v8, "oneHandler":Lcom/android/dx/dex/code/CodeAddress;
    invoke-virtual {v8}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v9

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/dx/dex/code/CatchHandlerList;->set(ILcom/android/dx/rop/cst/CstType;I)V

    .line 257
    .end local v7    # "oneType":Lcom/android/dx/rop/cst/CstType;
    .end local v8    # "oneHandler":Lcom/android/dx/dex/code/CodeAddress;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 263
    .end local v6    # "i":I
    :cond_6
    invoke-virtual {v5}, Lcom/android/dx/dex/code/CatchHandlerList;->setImmutable()V

    .line 264
    return-object v5
.end method

.method private static makeEntry(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CatchHandlerList;Lcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable$Entry;
    .locals 5
    .param p0, "start"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p1, "end"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "handlers"    # Lcom/android/dx/dex/code/CatchHandlerList;
    .param p3, "addresses"    # Lcom/android/dx/dex/code/BlockAddresses;

    .line 283
    invoke-virtual {p3, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    .line 286
    .local v0, "startAddress":Lcom/android/dx/dex/code/CodeAddress;
    invoke-virtual {p3, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    .line 288
    .local v1, "endAddress":Lcom/android/dx/dex/code/CodeAddress;
    new-instance v2, Lcom/android/dx/dex/code/CatchTable$Entry;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v3

    .line 289
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v4

    invoke-direct {v2, v3, v4, p2}, Lcom/android/dx/dex/code/CatchTable$Entry;-><init>(IILcom/android/dx/dex/code/CatchHandlerList;)V

    .line 288
    return-object v2
.end method

.method private static rangeIsValid(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/BlockAddresses;)Z
    .locals 4
    .param p0, "start"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p1, "end"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "addresses"    # Lcom/android/dx/dex/code/BlockAddresses;

    .line 304
    if-eqz p0, :cond_2

    .line 308
    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p2, p0}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    .line 314
    .local v0, "startAddress":I
    invoke-virtual {p2, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    .line 316
    .local v1, "endAddress":I
    sub-int v2, v1, v0

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 309
    .end local v0    # "startAddress":I
    .end local v1    # "endAddress":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/dx/dex/code/CatchTable;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->order:[I

    iget-object v2, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-static {v0, v1, v2}, Lcom/android/dx/dex/code/StdCatchBuilder;->build(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)Lcom/android/dx/dex/code/CatchTable;

    move-result-object v0

    return-object v0
.end method

.method public getCatchTypes()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/rop/type/Type;>;"
    iget-object v1, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 101
    .local v1, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v2

    .line 103
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 104
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v4

    .line 105
    .local v4, "block":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v5

    .line 106
    .local v5, "catches":Lcom/android/dx/rop/type/TypeList;
    invoke-interface {v5}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v6

    .line 108
    .local v6, "catchSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 109
    invoke-interface {v5, v7}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    .end local v4    # "block":Lcom/android/dx/rop/code/BasicBlock;
    .end local v5    # "catches":Lcom/android/dx/rop/type/TypeList;
    .end local v6    # "catchSize":I
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public hasAnyCatches()Z
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/android/dx/dex/code/StdCatchBuilder;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 83
    .local v0, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    .line 85
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 86
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    .line 87
    .local v3, "block":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/Insn;->getCatches()Lcom/android/dx/rop/type/TypeList;

    move-result-object v4

    .line 88
    .local v4, "catches":Lcom/android/dx/rop/type/TypeList;
    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const/4 v5, 0x1

    return v5

    .line 85
    .end local v3    # "block":Lcom/android/dx/rop/code/BasicBlock;
    .end local v4    # "catches":Lcom/android/dx/rop/type/TypeList;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
