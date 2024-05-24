.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field static final maxBufferLen:I = 0x8000

.field private static final maxStringCacheLen:I = 0xc

.field private static final minReadAheadLen:I = 0x400

.field static final readAheadLimit:I = 0x6000


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private bufSplitPoint:I

.field private final charBuf:[C

.field private readFully:Z

.field private final reader:Ljava/io/Reader;

.field private readerPos:I

.field private final stringCache:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;

    .line 40
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 29
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 34
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 35
    const v0, 0x8000

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 36
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 45
    return-void
.end method

.method private bufferUp()V
    .locals 9

    .line 49
    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 53
    .local v0, "pos":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    if-ge v0, v1, :cond_1

    .line 54
    return-void

    .line 57
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/Reader;->skip(J)J

    move-result-wide v1

    .line 58
    .local v1, "skipped":J
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Ljava/io/Reader;->mark(I)V

    .line 59
    const/4 v3, 0x0

    .line 60
    .local v3, "read":I
    :goto_0
    const/16 v4, 0x400

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-gt v3, v4, :cond_4

    .line 61
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    array-length v8, v7

    sub-int/2addr v8, v3

    invoke-virtual {v4, v7, v3, v8}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .line 62
    .local v4, "thisRead":I
    if-ne v4, v5, :cond_2

    .line 63
    iput-boolean v6, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    .line 64
    :cond_2
    if-gtz v4, :cond_3

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-int/2addr v3, v4

    .line 67
    .end local v4    # "thisRead":I
    goto :goto_0

    .line 68
    :cond_4
    :goto_1
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->reset()V

    .line 69
    if-lez v3, :cond_7

    .line 70
    int-to-long v7, v0

    cmp-long v4, v1, v7

    const/4 v7, 0x0

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move v6, v7

    :goto_2
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 71
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 72
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    .line 73
    iput v7, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 74
    iput v5, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 75
    const/16 v4, 0x6000

    if-le v3, v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "skipped":J
    .end local v3    # "read":I
    :cond_7
    nop

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v2, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "charBuf"    # [C
    .param p1, "stringCache"    # [Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 494
    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 496
    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 497
    const-string v0, ""

    return-object v0

    .line 500
    :cond_1
    const/4 v1, 0x0

    .line 501
    .local v1, "hash":I
    move v2, p2

    .line 502
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 503
    mul-int/lit8 v4, v1, 0x1f

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "offset":I
    .local v5, "offset":I
    aget-char v2, p0, v2

    add-int v1, v4, v2

    .line 502
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    .line 507
    .end local v3    # "i":I
    .end local v5    # "offset":I
    .restart local v2    # "offset":I
    :cond_2
    array-length v3, p1

    sub-int/2addr v3, v0

    and-int v0, v1, v3

    .line 508
    .local v0, "index":I
    aget-object v3, p1, v0

    .line 510
    .local v3, "cached":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 511
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v4

    .line 512
    aput-object v3, p1, v0

    goto :goto_1

    .line 514
    :cond_3
    invoke-static {p0, p2, p3, v3}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 515
    return-object v3

    .line 517
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v4

    .line 518
    aput-object v3, p1, v0

    .line 521
    :goto_1
    return-object v3
.end method

.method private isEmptyNoBufferUp()Z
    .locals 2

    .line 100
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .locals 5
    .param p0, "charBuf"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .line 528
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 529
    move v0, p1

    .line 530
    .local v0, "i":I
    const/4 v2, 0x0

    .line 531
    .local v2, "j":I
    :goto_0
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .local v3, "count":I
    if-eqz p2, :cond_1

    .line 532
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "i":I
    .local p2, "i":I
    aget-char v0, p0, v0

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_0

    .line 533
    return v1

    .line 532
    :cond_0
    move v0, p2

    move p2, v3

    move v2, v4

    goto :goto_0

    .line 535
    .end local v4    # "j":I
    .end local p2    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "j":I
    :cond_1
    const/4 p2, 0x1

    return p2

    .line 537
    .end local v0    # "i":I
    .end local v2    # "j":I
    .end local v3    # "count":I
    .local p2, "count":I
    :cond_2
    return v1
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 130
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 131
    return-void
.end method

.method consume()C
    .locals 2

    .line 113
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 114
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    .line 115
    .local v0, "val":C
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 116
    return v0
.end method

.method consumeData()Ljava/lang/String;
    .locals 7

    .line 274
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 275
    .local v0, "pos":I
    move v1, v0

    .line 276
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 277
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 279
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_0

    .line 280
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :sswitch_0
    nop

    .line 289
    :cond_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 290
    if-le v0, v1, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x26 -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .line 378
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 379
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 380
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_0

    .line 381
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    .line 382
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 383
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 386
    .end local v2    # "c":C
    goto :goto_0

    .line 387
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .line 365
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 366
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 367
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 368
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    .line 369
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    .line 370
    :cond_2
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 373
    .end local v2    # "c":C
    goto :goto_0

    .line 374
    :cond_3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .line 330
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 331
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 332
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 333
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    .line 334
    .local v1, "c":C
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 338
    .end local v1    # "c":C
    goto :goto_0

    .line 340
    :cond_3
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 344
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 345
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 346
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 347
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    .line 348
    .local v1, "c":C
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 352
    .end local v1    # "c":C
    goto :goto_0

    .line 353
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v1

    if-nez v1, :cond_4

    .line 354
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    .line 355
    .restart local v1    # "c":C
    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-gt v1, v3, :cond_4

    .line 356
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 359
    .end local v1    # "c":C
    goto :goto_1

    .line 361
    :cond_4
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 7

    .line 296
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 297
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 298
    .local v0, "pos":I
    move v1, v0

    .line 299
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 300
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 302
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_0

    .line 303
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :sswitch_0
    nop

    .line 318
    :cond_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 319
    if-le v0, v1, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public consumeTo(C)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # C

    .line 200
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result v0

    .line 201
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v1, v2, v3, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 204
    return-object v1

    .line 206
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 211
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    .line 212
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v1, v2, v3, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 215
    return-object v1

    .line 216
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 218
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 223
    .local v1, "endPos":I
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v5, v1, v4

    invoke-static {v2, v3, v4, v5}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "consumed":Ljava/lang/String;
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 225
    return-object v2
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .locals 8
    .param p1, "chars"    # [C

    .line 235
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 236
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 237
    .local v0, "pos":I
    move v1, v0

    .line 238
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 239
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 240
    .local v3, "val":[C
    array-length v4, p1

    .line 243
    .local v4, "charLen":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 244
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 245
    aget-char v6, v3, v0

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_0

    .line 246
    goto :goto_2

    .line 244
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v5    # "i":I
    :cond_2
    :goto_2
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 252
    if-le v0, v1, :cond_3

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v7, v0, v1

    invoke-static {v5, v6, v1, v7}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const-string v5, ""

    :goto_3
    return-object v5
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 7
    .param p1, "chars"    # [C

    .line 256
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 257
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 258
    .local v0, "pos":I
    move v1, v0

    .line 259
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 260
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 262
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_1

    .line 263
    aget-char v4, v3, v0

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_0

    .line 264
    goto :goto_1

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    :goto_1
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 268
    if-le v0, v1, :cond_2

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string v4, ""

    :goto_2
    return-object v4
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .line 323
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 324
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 326
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .line 475
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "loScan":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "hiScan":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public current()C
    .locals 2

    .line 108
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 109
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 95
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 96
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mark()V
    .locals 2

    .line 135
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    .line 138
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 139
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 140
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 456
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 458
    const/4 v0, 0x1

    return v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 465
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 467
    const/4 v0, 0x1

    return v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 391
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 396
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 398
    .local v0, "scanLength":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 399
    return v2

    .line 401
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 403
    return v2

    .line 401
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "offset":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method varargs matchesAny([C)Z
    .locals 5
    .param p1, "seq"    # [C

    .line 423
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    return v1

    .line 426
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 427
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 428
    .local v0, "c":C
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    .line 429
    .local v4, "seek":C
    if-ne v4, v0, :cond_1

    .line 430
    const/4 v1, 0x1

    return v1

    .line 428
    .end local v4    # "seek":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_2
    return v1
.end method

.method matchesAnySorted([C)Z
    .locals 2
    .param p1, "seq"    # [C

    .line 436
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 437
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matchesDigit()Z
    .locals 3

    .line 448
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 449
    return v1

    .line 450
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 451
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 409
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 410
    .local v0, "scanLength":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 411
    return v2

    .line 413
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 414
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 415
    .local v3, "upScan":C
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 416
    .local v4, "upTarget":C
    if-eq v3, v4, :cond_1

    .line 417
    return v2

    .line 413
    .end local v3    # "upScan":C
    .end local v4    # "upTarget":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "offset":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method matchesLetter()Z
    .locals 3

    .line 441
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 442
    return v1

    .line 443
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 444
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method nextIndexOf(C)I
    .locals 2
    .param p1, "c"    # C

    .line 161
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 162
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 164
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v1, v0, v1

    return v1

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 176
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 178
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 179
    .local v0, "startChar":C
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v1, "offset":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 181
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    .line 182
    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 184
    .local v2, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 185
    .local v3, "last":I
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v4, :cond_2

    if-gt v3, v4, :cond_2

    .line 186
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-ge v2, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v6, v6, v2

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 187
    .end local v4    # "j":I
    :cond_1
    if-ne v2, v3, :cond_2

    .line 188
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v4, v1, v4

    return v4

    .line 179
    .end local v2    # "i":I
    .end local v3    # "last":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "offset":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public pos()I
    .locals 2

    .line 87
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method rewindToMark()V
    .locals 3

    .line 147
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 150
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 151
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    .line 152
    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 482
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method unconsume()V
    .locals 3

    .line 120
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 123
    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 124
    return-void

    .line 121
    :cond_0
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "No buffer left to unconsume"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method unmark()V
    .locals 1

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 144
    return-void
.end method
