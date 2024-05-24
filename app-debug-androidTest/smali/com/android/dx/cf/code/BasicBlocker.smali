.class public final Lcom/android/dx/cf/code/BasicBlocker;
.super Ljava/lang/Object;
.source "BasicBlocker.java"

# interfaces
.implements Lcom/android/dx/cf/code/BytecodeArray$Visitor;


# instance fields
.field private final blockSet:[I

.field private final catchLists:[Lcom/android/dx/cf/code/ByteCatchList;

.field private final liveSet:[I

.field private final method:Lcom/android/dx/cf/code/ConcreteMethod;

.field private previousOffset:I

.field private final targetLists:[Lcom/android/dx/util/IntList;

.field private final workSet:[I


# direct methods
.method private constructor <init>(Lcom/android/dx/cf/code/ConcreteMethod;)V
    .locals 2
    .param p1, "method"    # Lcom/android/dx/cf/code/ConcreteMethod;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lcom/android/dx/cf/code/BasicBlocker;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    .line 107
    invoke-virtual {p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/cf/code/BytecodeArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 109
    .local v0, "sz":I
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->workSet:[I

    .line 110
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->liveSet:[I

    .line 111
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->blockSet:[I

    .line 112
    new-array v1, v0, [Lcom/android/dx/util/IntList;

    iput-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    .line 113
    new-array v1, v0, [Lcom/android/dx/cf/code/ByteCatchList;

    iput-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/android/dx/cf/code/ByteCatchList;

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->previousOffset:I

    .line 115
    return-void

    .line 96
    .end local v0    # "sz":I
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addWorkIfNecessary(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "blockStart"    # Z

    .line 387
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v0, p1}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-static {v0, p1}, Lcom/android/dx/util/Bits;->set([II)V

    .line 391
    :cond_0
    if-eqz p2, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v0, p1}, Lcom/android/dx/util/Bits;->set([II)V

    .line 394
    :cond_1
    return-void
.end method

.method private doit()V
    .locals 9

    .line 339
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 340
    .local v0, "bytes":Lcom/android/dx/cf/code/BytecodeArray;
    iget-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    .line 341
    .local v1, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    invoke-virtual {v1}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v2

    .line 347
    .local v2, "catchSz":I
    iget-object v3, p0, Lcom/android/dx/cf/code/BasicBlocker;->workSet:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/dx/util/Bits;->set([II)V

    .line 348
    iget-object v3, p0, Lcom/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v3, v4}, Lcom/android/dx/util/Bits;->set([II)V

    .line 355
    :goto_0
    iget-object v3, p0, Lcom/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-static {v3}, Lcom/android/dx/util/Bits;->isEmpty([I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/android/dx/cf/code/BasicBlocker;->workSet:[I

    invoke-virtual {v0, v3, p0}, Lcom/android/dx/cf/code/BytecodeArray;->processWorkSet([ILcom/android/dx/cf/code/BytecodeArray$Visitor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    nop

    .line 365
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 366
    invoke-virtual {v1, v3}, Lcom/android/dx/cf/code/ByteCatchList;->get(I)Lcom/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v4

    .line 367
    .local v4, "item":Lcom/android/dx/cf/code/ByteCatchList$Item;
    invoke-virtual {v4}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getStartPc()I

    move-result v5

    .line 368
    .local v5, "start":I
    invoke-virtual {v4}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getEndPc()I

    move-result v6

    .line 369
    .local v6, "end":I
    iget-object v7, p0, Lcom/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v7, v5, v6}, Lcom/android/dx/util/Bits;->anyInRange([III)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 370
    iget-object v7, p0, Lcom/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v7, v5}, Lcom/android/dx/util/Bits;->set([II)V

    .line 371
    iget-object v7, p0, Lcom/android/dx/cf/code/BasicBlocker;->blockSet:[I

    invoke-static {v7, v6}, Lcom/android/dx/util/Bits;->set([II)V

    .line 372
    invoke-virtual {v4}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 365
    .end local v4    # "item":Lcom/android/dx/cf/code/ByteCatchList$Item;
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 358
    :catch_0
    move-exception v3

    .line 360
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/dx/cf/code/SimException;

    const-string v5, "flow of control falls off end of method"

    invoke-direct {v4, v5, v3}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 376
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_2
    return-void
.end method

.method private getBlockList()Lcom/android/dx/cf/code/ByteBlockList;
    .locals 15

    .line 283
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 284
    .local v0, "bytes":Lcom/android/dx/cf/code/BytecodeArray;
    invoke-virtual {v0}, Lcom/android/dx/cf/code/BytecodeArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/dx/cf/code/ByteBlock;

    .line 285
    .local v1, "bbs":[Lcom/android/dx/cf/code/ByteBlock;
    const/4 v2, 0x0

    .line 287
    .local v2, "count":I
    const/4 v3, 0x0

    move v9, v3

    .line 288
    .local v9, "at":I
    :goto_0
    iget-object v3, p0, Lcom/android/dx/cf/code/BasicBlocker;->blockSet:[I

    add-int/lit8 v4, v9, 0x1

    invoke-static {v3, v4}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v10

    .line 289
    .local v10, "next":I
    if-gez v10, :cond_1

    .line 290
    nop

    .line 327
    .end local v9    # "at":I
    .end local v10    # "next":I
    new-instance v3, Lcom/android/dx/cf/code/ByteBlockList;

    invoke-direct {v3, v2}, Lcom/android/dx/cf/code/ByteBlockList;-><init>(I)V

    .line 328
    .local v3, "result":Lcom/android/dx/cf/code/ByteBlockList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 329
    aget-object v5, v1, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/dx/cf/code/ByteBlockList;->set(ILcom/android/dx/cf/code/ByteBlock;)V

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 332
    .end local v4    # "i":I
    :cond_0
    return-object v3

    .line 293
    .end local v3    # "result":Lcom/android/dx/cf/code/ByteBlockList;
    .restart local v9    # "at":I
    .restart local v10    # "next":I
    :cond_1
    iget-object v3, p0, Lcom/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v3, v9}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 299
    const/4 v3, 0x0

    .line 300
    .local v3, "targets":Lcom/android/dx/util/IntList;
    const/4 v4, -0x1

    .line 303
    .local v4, "targetsAt":I
    add-int/lit8 v5, v10, -0x1

    .local v5, "i":I
    :goto_2
    if-lt v5, v9, :cond_3

    .line 304
    iget-object v6, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    aget-object v3, v6, v5

    .line 305
    if-eqz v3, :cond_2

    .line 306
    move v4, v5

    .line 307
    move v11, v4

    goto :goto_3

    .line 303
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    move v11, v4

    .line 311
    .end local v4    # "targetsAt":I
    .end local v5    # "i":I
    .local v11, "targetsAt":I
    :goto_3
    if-nez v3, :cond_4

    .line 312
    invoke-static {v10}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v3

    .line 313
    sget-object v4, Lcom/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/android/dx/cf/code/ByteCatchList;

    move-object v12, v3

    move-object v13, v4

    .local v4, "blockCatches":Lcom/android/dx/cf/code/ByteCatchList;
    goto :goto_4

    .line 315
    .end local v4    # "blockCatches":Lcom/android/dx/cf/code/ByteCatchList;
    :cond_4
    iget-object v4, p0, Lcom/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/android/dx/cf/code/ByteCatchList;

    aget-object v4, v4, v11

    .line 316
    .restart local v4    # "blockCatches":Lcom/android/dx/cf/code/ByteCatchList;
    if-nez v4, :cond_5

    .line 317
    sget-object v4, Lcom/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/android/dx/cf/code/ByteCatchList;

    move-object v12, v3

    move-object v13, v4

    goto :goto_4

    .line 316
    :cond_5
    move-object v12, v3

    move-object v13, v4

    .line 321
    .end local v3    # "targets":Lcom/android/dx/util/IntList;
    .end local v4    # "blockCatches":Lcom/android/dx/cf/code/ByteCatchList;
    .local v12, "targets":Lcom/android/dx/util/IntList;
    .local v13, "blockCatches":Lcom/android/dx/cf/code/ByteCatchList;
    :goto_4
    new-instance v14, Lcom/android/dx/cf/code/ByteBlock;

    move-object v3, v14

    move v4, v9

    move v5, v9

    move v6, v10

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/android/dx/cf/code/ByteBlock;-><init>(IIILcom/android/dx/util/IntList;Lcom/android/dx/cf/code/ByteCatchList;)V

    aput-object v14, v1, v2

    .line 323
    add-int/lit8 v2, v2, 0x1

    .line 287
    .end local v11    # "targetsAt":I
    .end local v12    # "targets":Lcom/android/dx/util/IntList;
    .end local v13    # "blockCatches":Lcom/android/dx/cf/code/ByteCatchList;
    :cond_6
    move v9, v10

    goto :goto_0
.end method

.method public static identifyBlocks(Lcom/android/dx/cf/code/ConcreteMethod;)Lcom/android/dx/cf/code/ByteBlockList;
    .locals 2
    .param p0, "method"    # Lcom/android/dx/cf/code/ConcreteMethod;

    .line 82
    new-instance v0, Lcom/android/dx/cf/code/BasicBlocker;

    invoke-direct {v0, p0}, Lcom/android/dx/cf/code/BasicBlocker;-><init>(Lcom/android/dx/cf/code/ConcreteMethod;)V

    .line 84
    .local v0, "bb":Lcom/android/dx/cf/code/BasicBlocker;
    invoke-direct {v0}, Lcom/android/dx/cf/code/BasicBlocker;->doit()V

    .line 85
    invoke-direct {v0}, Lcom/android/dx/cf/code/BasicBlocker;->getBlockList()Lcom/android/dx/cf/code/ByteBlockList;

    move-result-object v1

    return-object v1
.end method

.method private visitCommon(IIZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "nextIsLive"    # Z

    .line 406
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->liveSet:[I

    invoke-static {v0, p1}, Lcom/android/dx/util/Bits;->set([II)V

    .line 408
    if-eqz p3, :cond_0

    .line 414
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->blockSet:[I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Lcom/android/dx/util/Bits;->set([II)V

    .line 425
    :goto_0
    return-void
.end method

.method private visitThrowing(IIZ)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "nextIsLive"    # Z

    .line 439
    add-int v0, p1, p2

    .line 441
    .local v0, "next":I
    if-eqz p3, :cond_0

    .line 442
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/dx/cf/code/ByteCatchList;->listFor(I)Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    .line 446
    .local v1, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    iget-object v2, p0, Lcom/android/dx/cf/code/BasicBlocker;->catchLists:[Lcom/android/dx/cf/code/ByteCatchList;

    aput-object v1, v2, p1

    .line 447
    iget-object v2, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    if-eqz p3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/dx/cf/code/ByteCatchList;->toTargetList(I)Lcom/android/dx/util/IntList;

    move-result-object v3

    aput-object v3, v2, p1

    .line 448
    return-void
.end method


# virtual methods
.method public getPreviousOffset()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->previousOffset:I

    return v0
.end method

.method public setPreviousOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 455
    iput p1, p0, Lcom/android/dx/cf/code/BasicBlocker;->previousOffset:I

    .line 456
    return-void
.end method

.method public visitBranch(IIII)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "target"    # I

    .line 226
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-direct {p0, p2, v0}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    goto :goto_0

    .line 228
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 229
    iget-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    invoke-static {p4}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v2

    aput-object v2, v1, p2

    .line 230
    goto :goto_1

    .line 243
    :goto_0
    add-int v1, p2, p3

    .line 244
    .local v1, "next":I
    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 245
    invoke-direct {p0, v1, v0}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 246
    iget-object v2, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    invoke-static {v1, p4}, Lcom/android/dx/util/IntList;->makeImmutable(II)Lcom/android/dx/util/IntList;

    move-result-object v3

    aput-object v3, v2, p2

    .line 247
    nop

    .line 251
    .end local v1    # "next":I
    :goto_1
    invoke-direct {p0, p4, v0}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 252
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "cst"    # Lcom/android/dx/rop/cst/Constant;
    .param p5, "value"    # I

    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 209
    instance-of v1, p4, Lcom/android/dx/rop/cst/CstMemberRef;

    if-nez v1, :cond_0

    instance-of v1, p4, Lcom/android/dx/rop/cst/CstType;

    if-nez v1, :cond_0

    instance-of v1, p4, Lcom/android/dx/rop/cst/CstString;

    if-nez v1, :cond_0

    instance-of v1, p4, Lcom/android/dx/rop/cst/CstInvokeDynamic;

    if-nez v1, :cond_0

    instance-of v1, p4, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-nez v1, :cond_0

    instance-of v1, p4, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    .line 220
    :cond_1
    return-void
.end method

.method public visitInvalid(III)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 128
    return-void
.end method

.method public visitLocal(IIIILcom/android/dx/rop/type/Type;I)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "idx"    # I
    .param p5, "type"    # Lcom/android/dx/rop/type/Type;
    .param p6, "value"    # I

    .line 195
    const/16 v0, 0xa9

    if-ne p1, v0, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 197
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    sget-object v1, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    aput-object v1, v0, p2

    goto :goto_0

    .line 199
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 201
    :goto_0
    return-void
.end method

.method public visitNewarray(IILcom/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "type"    # Lcom/android/dx/rop/cst/CstType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/dx/rop/cst/CstType;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p4, "intVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 274
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    .line 275
    return-void
.end method

.method public visitNoArgs(IIILcom/android/dx/rop/type/Type;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "type"    # Lcom/android/dx/rop/type/Type;

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-direct {p0, p2, p3, v1}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    goto :goto_0

    .line 141
    :sswitch_0
    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 142
    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    .line 143
    goto :goto_0

    .line 136
    :sswitch_1
    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 137
    iget-object v0, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    sget-object v1, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    aput-object v1, v0, p2

    .line 138
    goto :goto_0

    .line 178
    :sswitch_2
    invoke-direct {p0, p2, p3, v1}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 179
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    if-ne p4, v0, :cond_1

    .line 180
    :cond_0
    invoke-direct {p0, p2, p3, v1}, Lcom/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    goto :goto_0

    .line 168
    :sswitch_3
    invoke-direct {p0, p2, p3, v1}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 169
    invoke-direct {p0, p2, p3, v1}, Lcom/android/dx/cf/code/BasicBlocker;->visitThrowing(IIZ)V

    .line 170
    nop

    .line 189
    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_3
        0x2f -> :sswitch_3
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x4f -> :sswitch_3
        0x50 -> :sswitch_3
        0x51 -> :sswitch_3
        0x52 -> :sswitch_3
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x6c -> :sswitch_2
        0x70 -> :sswitch_2
        0xac -> :sswitch_1
        0xb1 -> :sswitch_1
        0xbe -> :sswitch_3
        0xbf -> :sswitch_0
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public visitSwitch(IIILcom/android/dx/cf/code/SwitchList;I)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "cases"    # Lcom/android/dx/cf/code/SwitchList;
    .param p5, "padding"    # I

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/dx/cf/code/BasicBlocker;->visitCommon(IIZ)V

    .line 259
    invoke-virtual {p4}, Lcom/android/dx/cf/code/SwitchList;->getDefaultTarget()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 261
    invoke-virtual {p4}, Lcom/android/dx/cf/code/SwitchList;->size()I

    move-result v0

    .line 262
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 263
    invoke-virtual {p4, v2}, Lcom/android/dx/cf/code/SwitchList;->getTarget(I)I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/android/dx/cf/code/BasicBlocker;->addWorkIfNecessary(IZ)V

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/dx/cf/code/BasicBlocker;->targetLists:[Lcom/android/dx/util/IntList;

    invoke-virtual {p4}, Lcom/android/dx/cf/code/SwitchList;->getTargets()Lcom/android/dx/util/IntList;

    move-result-object v2

    aput-object v2, v1, p2

    .line 267
    return-void
.end method
