.class public final Lcom/android/dex/Dex$Section;
.super Ljava/lang/Object;
.source "Dex.java"

# interfaces
.implements Lcom/android/dex/util/ByteInput;
.implements Lcom/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Section"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final initialPosition:I

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dex/Dex;


# direct methods
.method private constructor <init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dex/Dex;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .line 333
    iput-object p1, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/android/dex/Dex$Section;->initialPosition:I

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/android/dex/Dex$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dex/Dex;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/nio/ByteBuffer;
    .param p4, "x3"    # Lcom/android/dex/Dex$1;

    .line 328
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dex/Dex$Section;-><init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/dex/Dex$Section;)Lcom/android/dex/ClassData;
    .locals 1
    .param p0, "x0"    # Lcom/android/dex/Dex$Section;

    .line 328
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readClassData()Lcom/android/dex/ClassData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dex/Dex$Section;)Lcom/android/dex/Code;
    .locals 1
    .param p0, "x0"    # Lcom/android/dex/Dex$Section;

    .line 328
    invoke-direct {p0}, Lcom/android/dex/Dex$Section;->readCode()Lcom/android/dex/Code;

    move-result-object v0

    return-object v0
.end method

.method private findCatchHandlerIndex([Lcom/android/dex/Code$CatchHandler;I)I
    .locals 3
    .param p1, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;
    .param p2, "offset"    # I

    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 528
    aget-object v1, p1, v0

    .line 529
    .local v1, "catchHandler":Lcom/android/dex/Code$CatchHandler;
    invoke-virtual {v1}, Lcom/android/dex/Code$CatchHandler;->getOffset()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 530
    return v0

    .line 527
    .end local v1    # "catchHandler":Lcom/android/dex/Code$CatchHandler;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getBytesFrom(I)[B
    .locals 3
    .param p1, "start"    # I

    .line 589
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 590
    .local v0, "end":I
    sub-int v1, v0, p1

    new-array v1, v1, [B

    .line 591
    .local v1, "result":[B
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 592
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 593
    return-object v1
.end method

.method private readCatchHandler(I)Lcom/android/dex/Code$CatchHandler;
    .locals 6
    .param p1, "offset"    # I

    .line 537
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readSleb128()I

    move-result v0

    .line 538
    .local v0, "size":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 539
    .local v1, "handlersCount":I
    new-array v2, v1, [I

    .line 540
    .local v2, "typeIndexes":[I
    new-array v3, v1, [I

    .line 541
    .local v3, "addresses":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v5

    aput v5, v2, v4

    .line 543
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v5

    aput v5, v3, v4

    .line 541
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    .end local v4    # "i":I
    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 546
    .local v4, "catchAllAddress":I
    :goto_1
    new-instance v5, Lcom/android/dex/Code$CatchHandler;

    invoke-direct {v5, v2, v3, v4, p1}, Lcom/android/dex/Code$CatchHandler;-><init>([I[III)V

    return-object v5
.end method

.method private readCatchHandlers()[Lcom/android/dex/Code$CatchHandler;
    .locals 6

    .line 504
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 505
    .local v0, "baseOffset":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 506
    .local v1, "catchHandlersSize":I
    new-array v2, v1, [Lcom/android/dex/Code$CatchHandler;

    .line 507
    .local v2, "result":[Lcom/android/dex/Code$CatchHandler;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 508
    iget-object v4, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v0

    .line 509
    .local v4, "offset":I
    invoke-direct {p0, v4}, Lcom/android/dex/Dex$Section;->readCatchHandler(I)Lcom/android/dex/Code$CatchHandler;

    move-result-object v5

    aput-object v5, v2, v3

    .line 507
    .end local v4    # "offset":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 511
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method private readClassData()Lcom/android/dex/ClassData;
    .locals 9

    .line 550
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v0

    .line 551
    .local v0, "staticFieldsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v1

    .line 552
    .local v1, "instanceFieldsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v2

    .line 553
    .local v2, "directMethodsSize":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    .line 554
    .local v3, "virtualMethodsSize":I
    invoke-direct {p0, v0}, Lcom/android/dex/Dex$Section;->readFields(I)[Lcom/android/dex/ClassData$Field;

    move-result-object v4

    .line 555
    .local v4, "staticFields":[Lcom/android/dex/ClassData$Field;
    invoke-direct {p0, v1}, Lcom/android/dex/Dex$Section;->readFields(I)[Lcom/android/dex/ClassData$Field;

    move-result-object v5

    .line 556
    .local v5, "instanceFields":[Lcom/android/dex/ClassData$Field;
    invoke-direct {p0, v2}, Lcom/android/dex/Dex$Section;->readMethods(I)[Lcom/android/dex/ClassData$Method;

    move-result-object v6

    .line 557
    .local v6, "directMethods":[Lcom/android/dex/ClassData$Method;
    invoke-direct {p0, v3}, Lcom/android/dex/Dex$Section;->readMethods(I)[Lcom/android/dex/ClassData$Method;

    move-result-object v7

    .line 558
    .local v7, "virtualMethods":[Lcom/android/dex/ClassData$Method;
    new-instance v8, Lcom/android/dex/ClassData;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/android/dex/ClassData;-><init>([Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Field;[Lcom/android/dex/ClassData$Method;[Lcom/android/dex/ClassData$Method;)V

    return-object v8
.end method

.method private readCode()Lcom/android/dex/Code;
    .locals 19

    .line 472
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v9

    .line 473
    .local v9, "registersSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v10

    .line 474
    .local v10, "insSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v11

    .line 475
    .local v11, "outsSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v12

    .line 476
    .local v12, "triesSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v13

    .line 477
    .local v13, "debugInfoOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v14

    .line 478
    .local v14, "instructionsSize":I
    invoke-virtual {v0, v14}, Lcom/android/dex/Dex$Section;->readShortArray(I)[S

    move-result-object v15

    .line 481
    .local v15, "instructions":[S
    if-lez v12, :cond_1

    .line 482
    array-length v1, v15

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readShort()S

    .line 491
    :cond_0
    iget-object v1, v0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    iget-object v2, v0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v1

    .line 492
    .local v1, "triesSection":Lcom/android/dex/Dex$Section;
    mul-int/lit8 v2, v12, 0x8

    invoke-virtual {v0, v2}, Lcom/android/dex/Dex$Section;->skip(I)V

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readCatchHandlers()[Lcom/android/dex/Code$CatchHandler;

    move-result-object v2

    .line 494
    .local v2, "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    invoke-direct {v1, v12, v2}, Lcom/android/dex/Dex$Section;->readTries(I[Lcom/android/dex/Code$CatchHandler;)[Lcom/android/dex/Code$Try;

    move-result-object v1

    .line 495
    .local v1, "tries":[Lcom/android/dex/Code$Try;
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_0

    .line 496
    .end local v1    # "tries":[Lcom/android/dex/Code$Try;
    .end local v2    # "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/dex/Code$Try;

    .line 497
    .local v2, "tries":[Lcom/android/dex/Code$Try;
    new-array v1, v1, [Lcom/android/dex/Code$CatchHandler;

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 499
    .end local v2    # "tries":[Lcom/android/dex/Code$Try;
    .local v16, "tries":[Lcom/android/dex/Code$Try;
    .local v17, "catchHandlers":[Lcom/android/dex/Code$CatchHandler;
    :goto_0
    new-instance v18, Lcom/android/dex/Code;

    move-object/from16 v1, v18

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v13

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/dex/Code;-><init>(IIII[S[Lcom/android/dex/Code$Try;[Lcom/android/dex/Code$CatchHandler;)V

    return-object v18
.end method

.method private readFields(I)[Lcom/android/dex/ClassData$Field;
    .locals 5
    .param p1, "count"    # I

    .line 562
    new-array v0, p1, [Lcom/android/dex/ClassData$Field;

    .line 563
    .local v0, "result":[Lcom/android/dex/ClassData$Field;
    const/4 v1, 0x0

    .line 564
    .local v1, "fieldIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    add-int/2addr v1, v3

    .line 566
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    .line 567
    .local v3, "accessFlags":I
    new-instance v4, Lcom/android/dex/ClassData$Field;

    invoke-direct {v4, v1, v3}, Lcom/android/dex/ClassData$Field;-><init>(II)V

    aput-object v4, v0, v2

    .line 564
    .end local v3    # "accessFlags":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private readMethods(I)[Lcom/android/dex/ClassData$Method;
    .locals 6
    .param p1, "count"    # I

    .line 573
    new-array v0, p1, [Lcom/android/dex/ClassData$Method;

    .line 574
    .local v0, "result":[Lcom/android/dex/ClassData$Method;
    const/4 v1, 0x0

    .line 575
    .local v1, "methodIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    add-int/2addr v1, v3

    .line 577
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    .line 578
    .local v3, "accessFlags":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v4

    .line 579
    .local v4, "codeOff":I
    new-instance v5, Lcom/android/dex/ClassData$Method;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/dex/ClassData$Method;-><init>(III)V

    aput-object v5, v0, v2

    .line 575
    .end local v3    # "accessFlags":I
    .end local v4    # "codeOff":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private readTries(I[Lcom/android/dex/Code$CatchHandler;)[Lcom/android/dex/Code$Try;
    .locals 7
    .param p1, "triesSize"    # I
    .param p2, "catchHandlers"    # [Lcom/android/dex/Code$CatchHandler;

    .line 515
    new-array v0, p1, [Lcom/android/dex/Code$Try;

    .line 516
    .local v0, "result":[Lcom/android/dex/Code$Try;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 518
    .local v2, "startAddress":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v3

    .line 519
    .local v3, "instructionCount":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v4

    .line 520
    .local v4, "handlerOffset":I
    invoke-direct {p0, p2, v4}, Lcom/android/dex/Dex$Section;->findCatchHandlerIndex([Lcom/android/dex/Code$CatchHandler;I)I

    move-result v5

    .line 521
    .local v5, "catchHandlerIndex":I
    new-instance v6, Lcom/android/dex/Code$Try;

    invoke-direct {v6, v2, v3, v5}, Lcom/android/dex/Code$Try;-><init>(III)V

    aput-object v6, v0, v1

    .line 516
    .end local v2    # "startAddress":I
    .end local v3    # "instructionCount":I
    .end local v4    # "handlerOffset":I
    .end local v5    # "catchHandlerIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public alignToFourBytes()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 621
    return-void
.end method

.method public alignToFourBytesWithZeroFill()V
    .locals 2

    .line 627
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method public assertFourByteAligned()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 636
    return-void

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not four byte aligned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public readAnnotation()Lcom/android/dex/Annotation;
    .locals 6

    .line 597
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readByte()B

    move-result v0

    .line 598
    .local v0, "visibility":B
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 599
    .local v1, "start":I
    new-instance v2, Lcom/android/dex/EncodedValueReader;

    const/16 v3, 0x1d

    invoke-direct {v2, p0, v3}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    invoke-virtual {v2}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    .line 600
    new-instance v2, Lcom/android/dex/Annotation;

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    new-instance v4, Lcom/android/dex/EncodedValue;

    invoke-direct {p0, v1}, Lcom/android/dex/Dex$Section;->getBytesFrom(I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/dex/EncodedValue;-><init>([B)V

    invoke-direct {v2, v3, v0, v4}, Lcom/android/dex/Annotation;-><init>(Lcom/android/dex/Dex;BLcom/android/dex/EncodedValue;)V

    return-object v2
.end method

.method public readByte()B
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public readByteArray(I)[B
    .locals 2
    .param p1, "length"    # I

    .line 361
    new-array v0, p1, [B

    .line 362
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 363
    return-object v0
.end method

.method public readCallSiteId()Lcom/android/dex/CallSiteId;
    .locals 3

    .line 444
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 445
    .local v0, "offset":I
    new-instance v1, Lcom/android/dex/CallSiteId;

    iget-object v2, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v1, v2, v0}, Lcom/android/dex/CallSiteId;-><init>(Lcom/android/dex/Dex;I)V

    return-object v1
.end method

.method public readClassDef()Lcom/android/dex/ClassDef;
    .locals 21

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v11

    .line 458
    .local v11, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v12

    .line 459
    .local v12, "type":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v13

    .line 460
    .local v13, "accessFlags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v14

    .line 461
    .local v14, "supertype":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v15

    .line 462
    .local v15, "interfacesOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v16

    .line 463
    .local v16, "sourceFileIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v17

    .line 464
    .local v17, "annotationsOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v18

    .line 465
    .local v18, "classDataOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v19

    .line 466
    .local v19, "staticValuesOffset":I
    new-instance v20, Lcom/android/dex/ClassDef;

    move-object/from16 v10, p0

    iget-object v1, v10, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    move-object/from16 v0, v20

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/android/dex/ClassDef;-><init>(Lcom/android/dex/Dex;IIIIIIIII)V

    return-object v20
.end method

.method public readEncodedArray()Lcom/android/dex/EncodedValue;
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 605
    .local v0, "start":I
    new-instance v1, Lcom/android/dex/EncodedValueReader;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/util/ByteInput;I)V

    invoke-virtual {v1}, Lcom/android/dex/EncodedValueReader;->skipValue()V

    .line 606
    new-instance v1, Lcom/android/dex/EncodedValue;

    invoke-direct {p0, v0}, Lcom/android/dex/Dex$Section;->getBytesFrom(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dex/EncodedValue;-><init>([B)V

    return-object v1
.end method

.method public readFieldId()Lcom/android/dex/FieldId;
    .locals 5

    .line 423
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    .line 424
    .local v0, "declaringClassIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v1

    .line 425
    .local v1, "typeIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 426
    .local v2, "nameIndex":I
    new-instance v3, Lcom/android/dex/FieldId;

    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/dex/FieldId;-><init>(Lcom/android/dex/Dex;III)V

    return-object v3
.end method

.method public readInt()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readMethodHandle()Lcom/android/dex/MethodHandle;
    .locals 11

    .line 449
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    invoke-static {v0}, Lcom/android/dex/MethodHandle$MethodHandleType;->fromValue(I)Lcom/android/dex/MethodHandle$MethodHandleType;

    move-result-object v0

    .line 450
    .local v0, "methodHandleType":Lcom/android/dex/MethodHandle$MethodHandleType;
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v7

    .line 451
    .local v7, "unused1":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v8

    .line 452
    .local v8, "fieldOrMethodId":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v9

    .line 453
    .local v9, "unused2":I
    new-instance v10, Lcom/android/dex/MethodHandle;

    iget-object v2, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    move-object v1, v10

    move-object v3, v0

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/dex/MethodHandle;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/MethodHandle$MethodHandleType;III)V

    return-object v10
.end method

.method public readMethodId()Lcom/android/dex/MethodId;
    .locals 5

    .line 430
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v0

    .line 431
    .local v0, "declaringClassIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUnsignedShort()I

    move-result v1

    .line 432
    .local v1, "protoIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 433
    .local v2, "nameIndex":I
    new-instance v3, Lcom/android/dex/MethodId;

    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/dex/MethodId;-><init>(Lcom/android/dex/Dex;III)V

    return-object v3
.end method

.method public readProtoId()Lcom/android/dex/ProtoId;
    .locals 5

    .line 437
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 438
    .local v0, "shortyIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    .line 439
    .local v1, "returnTypeIndex":I
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v2

    .line 440
    .local v2, "parametersOffset":I
    new-instance v3, Lcom/android/dex/ProtoId;

    iget-object v4, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/dex/ProtoId;-><init>(Lcom/android/dex/Dex;III)V

    return-object v3
.end method

.method public readShort()S
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readShortArray(I)[S
    .locals 3
    .param p1, "length"    # I

    .line 367
    if-nez p1, :cond_0

    .line 368
    sget-object v0, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 370
    :cond_0
    new-array v0, p1, [S

    .line 371
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public readSleb128()I
    .locals 1

    .line 386
    invoke-static {p0}, Lcom/android/dex/Leb128;->readSignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 8

    .line 401
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 402
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 403
    .local v1, "savedPosition":I
    iget-object v2, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 404
    .local v2, "savedLimit":I
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 405
    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readUleb128()I

    move-result v3

    .line 408
    .local v3, "expectedLength":I
    new-array v4, v3, [C

    invoke-static {p0, v4}, Lcom/android/dex/Mutf8;->decode(Lcom/android/dex/util/ByteInput;[C)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v3, :cond_0

    .line 413
    nop

    .line 417
    iget-object v5, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 418
    iget-object v5, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 413
    return-object v4

    .line 410
    :cond_0
    :try_start_1
    new-instance v5, Lcom/android/dex/DexException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Declared length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t match decoded length of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 411
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    .end local v0    # "offset":I
    .end local v1    # "savedPosition":I
    .end local v2    # "savedLimit":I
    throw v5
    :try_end_1
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v3    # "expectedLength":I
    .end local v4    # "result":Ljava/lang/String;
    .restart local v0    # "offset":I
    .restart local v1    # "savedPosition":I
    .restart local v2    # "savedLimit":I
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 414
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Ljava/io/UTFDataFormatException;
    :try_start_2
    new-instance v4, Lcom/android/dex/DexException;

    invoke-direct {v4, v3}, Lcom/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "offset":I
    .end local v1    # "savedPosition":I
    .end local v2    # "savedLimit":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    .end local v3    # "e":Ljava/io/UTFDataFormatException;
    .restart local v0    # "offset":I
    .restart local v1    # "savedPosition":I
    .restart local v2    # "savedLimit":I
    :goto_0
    iget-object v4, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 418
    iget-object v4, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v3
.end method

.method public readTypeList()Lcom/android/dex/TypeList;
    .locals 4

    .line 394
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    .line 395
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->readShortArray(I)[S

    move-result-object v1

    .line 396
    .local v1, "types":[S
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->alignToFourBytes()V

    .line 397
    new-instance v2, Lcom/android/dex/TypeList;

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->this$0:Lcom/android/dex/Dex;

    invoke-direct {v2, v3, v1}, Lcom/android/dex/TypeList;-><init>(Lcom/android/dex/Dex;[S)V

    return-object v2
.end method

.method public readUleb128()I
    .locals 1

    .line 378
    invoke-static {p0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    return v0
.end method

.method public readUleb128p1()I
    .locals 1

    .line 382
    invoke-static {p0}, Lcom/android/dex/Leb128;->readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "count"    # I

    .line 610
    if-ltz p1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 614
    return-void

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public used()I
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/android/dex/Dex$Section;->initialPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public write([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 639
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 640
    return-void
.end method

.method public write([S)V
    .locals 3
    .param p1, "shorts"    # [S

    .line 660
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    .line 661
    .local v2, "s":S
    invoke-virtual {p0, v2}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 660
    .end local v2    # "s":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_0
    return-void
.end method

.method public writeByte(I)V
    .locals 2
    .param p1, "b"    # I

    .line 644
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 645
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "i"    # I

    .line 666
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 667
    return-void
.end method

.method public writeShort(S)V
    .locals 1
    .param p1, "i"    # S

    .line 648
    iget-object v0, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 649
    return-void
.end method

.method public writeSleb128(I)V
    .locals 4
    .param p1, "i"    # I

    .line 679
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    nop

    .line 683
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Section limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeStringData(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 687
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 688
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 689
    invoke-static {p1}, Lcom/android/dex/Mutf8;->encode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dex/Dex$Section;->write([B)V

    .line 690
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/dex/Dex$Section;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .end local v0    # "length":I
    nop

    .line 694
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/io/UTFDataFormatException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public writeTypeList(Lcom/android/dex/TypeList;)V
    .locals 4
    .param p1, "typeList"    # Lcom/android/dex/TypeList;

    .line 697
    invoke-virtual {p1}, Lcom/android/dex/TypeList;->getTypes()[S

    move-result-object v0

    .line 698
    .local v0, "types":[S
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 699
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, v0, v2

    .line 700
    .local v3, "type":S
    invoke-virtual {p0, v3}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 699
    .end local v3    # "type":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/dex/Dex$Section;->alignToFourBytesWithZeroFill()V

    .line 703
    return-void
.end method

.method public writeUleb128(I)V
    .locals 4
    .param p1, "i"    # I

    .line 671
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/dex/Leb128;->writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    nop

    .line 675
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Section limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exceeded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dex/Dex$Section;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeUleb128p1(I)V
    .locals 1
    .param p1, "i"    # I

    .line 390
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeUleb128(I)V

    .line 391
    return-void
.end method

.method public writeUnsignedShort(I)V
    .locals 4
    .param p1, "i"    # I

    .line 652
    int-to-short v0, p1

    .line 653
    .local v0, "s":S
    const v1, 0xffff

    and-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    .line 656
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    .line 657
    return-void

    .line 654
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected an unsigned short: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
