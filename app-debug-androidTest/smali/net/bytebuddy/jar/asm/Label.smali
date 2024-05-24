.class public Lnet/bytebuddy/jar/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

.field static final FLAG_DEBUG_ONLY:I = 0x1

.field static final FLAG_JUMP_TARGET:I = 0x2

.field static final FLAG_REACHABLE:I = 0x8

.field static final FLAG_RESOLVED:I = 0x4

.field static final FLAG_SUBROUTINE_CALLER:I = 0x10

.field static final FLAG_SUBROUTINE_END:I = 0x40

.field static final FLAG_SUBROUTINE_START:I = 0x20

.field static final FORWARD_REFERENCES_CAPACITY_INCREMENT:I = 0x6

.field static final FORWARD_REFERENCE_HANDLE_MASK:I = 0xfffffff

.field static final FORWARD_REFERENCE_TYPE_MASK:I = -0x10000000

.field static final FORWARD_REFERENCE_TYPE_SHORT:I = 0x10000000

.field static final FORWARD_REFERENCE_TYPE_WIDE:I = 0x20000000

.field static final LINE_NUMBERS_CAPACITY_INCREMENT:I = 0x4


# instance fields
.field bytecodeOffset:I

.field flags:S

.field private forwardReferences:[I

.field frame:Lnet/bytebuddy/jar/asm/Frame;

.field public info:Ljava/lang/Object;

.field inputStackSize:S

.field private lineNumber:S

.field nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field nextListElement:Lnet/bytebuddy/jar/asm/Label;

.field private otherLineNumbers:[I

.field outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

.field outputStackMax:S

.field outputStackSize:S

.field subroutineId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    sput-object v0, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method private addForwardReference(III)V
    .locals 6
    .param p1, "sourceInsnBytecodeOffset"    # I
    .param p2, "referenceType"    # I
    .param p3, "referenceHandle"    # I

    .line 417
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->forwardReferences:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 418
    new-array v0, v1, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->forwardReferences:[I

    .line 420
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->forwardReferences:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    .line 421
    .local v3, "lastElementIndex":I
    add-int/lit8 v4, v3, 0x2

    array-length v5, v0

    if-lt v4, v5, :cond_1

    .line 422
    array-length v4, v0

    add-int/2addr v4, v1

    new-array v1, v4, [I

    .line 423
    .local v1, "newValues":[I
    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Label;->forwardReferences:[I

    .line 426
    .end local v1    # "newValues":[I
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->forwardReferences:[I

    add-int/lit8 v3, v3, 0x1

    aput p1, v0, v3

    .line 427
    add-int/lit8 v3, v3, 0x1

    or-int v1, p2, p3

    aput v1, v0, v3

    .line 428
    aput v3, v0, v2

    .line 429
    return-void
.end method

.method private pushSuccessors(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;
    .locals 4
    .param p1, "listOfLabelsToProcess"    # Lnet/bytebuddy/jar/asm/Label;

    .line 591
    move-object v0, p1

    .line 592
    .local v0, "newListOfLabelsToProcess":Lnet/bytebuddy/jar/asm/Label;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 593
    .local v1, "outgoingEdge":Lnet/bytebuddy/jar/asm/Edge;
    :goto_0
    if-eqz v1, :cond_2

    .line 596
    iget-short v2, p0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 598
    .local v2, "isJsrTarget":Z
    :goto_1
    if-nez v2, :cond_1

    iget-object v3, v1, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    if-nez v3, :cond_1

    .line 601
    iget-object v3, v1, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, v3, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 602
    iget-object v0, v1, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 604
    :cond_1
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    .line 605
    .end local v2    # "isJsrTarget":Z
    goto :goto_0

    .line 606
    :cond_2
    return-object v0
.end method


# virtual methods
.method final accept(Lnet/bytebuddy/jar/asm/MethodVisitor;Z)V
    .locals 3
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "visitLineNumbers"    # Z

    .line 358
    invoke-virtual {p1, p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 359
    if-eqz p2, :cond_0

    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Label;->lineNumber:S

    if-eqz v0, :cond_0

    .line 360
    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V

    .line 361
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->otherLineNumbers:[I

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Label;->otherLineNumbers:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    if-gt v0, v2, :cond_0

    .line 363
    aget v1, v1, v0

    invoke-virtual {p1, v1, p0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final addLineNumber(I)V
    .locals 5
    .param p1, "lineNumber"    # I

    .line 335
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Label;->lineNumber:S

    if-nez v0, :cond_0

    .line 336
    int-to-short v0, p1

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Label;->lineNumber:S

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->otherLineNumbers:[I

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 339
    new-array v0, v1, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->otherLineNumbers:[I

    .line 341
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->otherLineNumbers:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 342
    .local v3, "otherLineNumberIndex":I
    array-length v4, v0

    if-lt v3, v4, :cond_2

    .line 343
    array-length v4, v0

    add-int/2addr v4, v1

    new-array v1, v4, [I

    .line 344
    .local v1, "newLineNumbers":[I
    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Label;->otherLineNumbers:[I

    .line 347
    .end local v1    # "newLineNumbers":[I
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->otherLineNumbers:[I

    aput p1, v0, v3

    .line 349
    .end local v3    # "otherLineNumberIndex":I
    :goto_0
    return-void
.end method

.method final addSubroutineRetSuccessors(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 7
    .param p1, "subroutineCaller"    # Lnet/bytebuddy/jar/asm/Label;

    .line 542
    sget-object v0, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    .line 543
    .local v0, "listOfProcessedBlocks":Lnet/bytebuddy/jar/asm/Label;
    move-object v1, p0

    .line 544
    .local v1, "listOfBlocksToProcess":Lnet/bytebuddy/jar/asm/Label;
    sget-object v2, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    iput-object v2, v1, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 545
    :goto_0
    sget-object v2, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    if-eq v1, v2, :cond_1

    .line 547
    move-object v2, v1

    .line 548
    .local v2, "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v1, v2, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 549
    iput-object v0, v2, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 550
    move-object v0, v2

    .line 555
    iget-short v3, v2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_0

    iget-short v3, v2, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    iget-short v4, p1, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    if-eq v3, v4, :cond_0

    .line 557
    new-instance v3, Lnet/bytebuddy/jar/asm/Edge;

    iget-short v4, v2, Lnet/bytebuddy/jar/asm/Label;->outputStackSize:S

    iget-object v5, p1, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    iget-object v6, v2, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v3, v4, v5, v6}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v3, v2, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 570
    :cond_0
    invoke-direct {v2, v1}, Lnet/bytebuddy/jar/asm/Label;->pushSuccessors(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v1

    .line 571
    .end local v2    # "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    goto :goto_0

    .line 574
    :cond_1
    :goto_1
    sget-object v2, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    if-eq v0, v2, :cond_2

    .line 575
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 576
    .local v2, "newListOfProcessedBlocks":Lnet/bytebuddy/jar/asm/Label;
    const/4 v3, 0x0

    iput-object v3, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 577
    move-object v0, v2

    .line 578
    .end local v2    # "newListOfProcessedBlocks":Lnet/bytebuddy/jar/asm/Label;
    goto :goto_1

    .line 579
    :cond_2
    return-void
.end method

.method final getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;
    .locals 1

    .line 322
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    :goto_0
    return-object v0
.end method

.method public getOffset()I
    .locals 2

    .line 302
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 305
    iget v0, p0, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    return v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Label offset position has not been resolved yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final markSubroutine(S)V
    .locals 3
    .param p1, "subroutineId"    # S

    .line 506
    move-object v0, p0

    .line 507
    .local v0, "listOfBlocksToProcess":Lnet/bytebuddy/jar/asm/Label;
    sget-object v1, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 508
    :goto_0
    sget-object v1, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    if-eq v0, v1, :cond_1

    .line 510
    move-object v1, v0

    .line 511
    .local v1, "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 512
    const/4 v2, 0x0

    iput-object v2, v1, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 516
    iget-short v2, v1, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    if-nez v2, :cond_0

    .line 517
    iput-short p1, v1, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    .line 518
    invoke-direct {v1, v0}, Lnet/bytebuddy/jar/asm/Label;->pushSuccessors(Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    .line 520
    .end local v1    # "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    :cond_0
    goto :goto_0

    .line 521
    :cond_1
    return-void
.end method

.method final put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V
    .locals 3
    .param p1, "code"    # Lnet/bytebuddy/jar/asm/ByteVector;
    .param p2, "sourceInsnBytecodeOffset"    # I
    .param p3, "wideReference"    # Z

    .line 386
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 387
    const/4 v0, -0x1

    if-eqz p3, :cond_0

    .line 388
    const/high16 v1, 0x20000000

    iget v2, p1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-direct {p0, p2, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->addForwardReference(III)V

    .line 389
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 391
    :cond_0
    const/high16 v1, 0x10000000

    iget v2, p1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-direct {p0, p2, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->addForwardReference(III)V

    .line 392
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 395
    :cond_1
    if-eqz p3, :cond_2

    .line 396
    iget v0, p0, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 398
    :cond_2
    iget v0, p0, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 401
    :goto_0
    return-void
.end method

.method final resolve([BI)Z
    .locals 8
    .param p1, "code"    # [B
    .param p2, "bytecodeOffset"    # I

    .line 446
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 447
    iput p2, p0, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 448
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Label;->forwardReferences:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 449
    return v1

    .line 451
    :cond_0
    const/4 v2, 0x0

    .line 452
    .local v2, "hasAsmInstructions":Z
    aget v0, v0, v1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_5

    .line 453
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Label;->forwardReferences:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v1, v3

    .line 454
    .local v3, "sourceInsnBytecodeOffset":I
    aget v1, v1, v0

    .line 455
    .local v1, "reference":I
    sub-int v4, p2, v3

    .line 456
    .local v4, "relativeOffset":I
    const v5, 0xfffffff

    and-int/2addr v5, v1

    .line 457
    .local v5, "handle":I
    const/high16 v6, -0x10000000

    and-int/2addr v6, v1

    const/high16 v7, 0x10000000

    if-ne v6, v7, :cond_4

    .line 458
    const/16 v6, -0x8000

    if-lt v4, v6, :cond_1

    const/16 v6, 0x7fff

    if-le v4, v6, :cond_3

    .line 463
    :cond_1
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    .line 464
    .local v6, "opcode":I
    const/16 v7, 0xc6

    if-ge v6, v7, :cond_2

    .line 466
    add-int/lit8 v7, v6, 0x31

    int-to-byte v7, v7

    aput-byte v7, p1, v3

    goto :goto_1

    .line 469
    :cond_2
    add-int/lit8 v7, v6, 0x14

    int-to-byte v7, v7

    aput-byte v7, p1, v3

    .line 471
    :goto_1
    const/4 v2, 0x1

    .line 473
    .end local v6    # "opcode":I
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "handle":I
    .local v6, "handle":I
    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    .line 474
    int-to-byte v5, v4

    aput-byte v5, p1, v6

    goto :goto_2

    .line 476
    .end local v6    # "handle":I
    .restart local v5    # "handle":I
    :cond_4
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "handle":I
    .restart local v6    # "handle":I
    ushr-int/lit8 v7, v4, 0x18

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    .line 477
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "handle":I
    .restart local v5    # "handle":I
    ushr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 478
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "handle":I
    .restart local v6    # "handle":I
    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p1, v5

    .line 479
    int-to-byte v5, v4

    aput-byte v5, p1, v6

    .line 452
    .end local v1    # "reference":I
    .end local v3    # "sourceInsnBytecodeOffset":I
    .end local v4    # "relativeOffset":I
    .end local v6    # "handle":I
    :goto_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 482
    .end local v0    # "i":I
    :cond_5
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
