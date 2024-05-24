.class public final Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;
.super Ljava/lang/Object;
.source "AlphabetConverter.java"


# static fields
.field private static final ARROW:Ljava/lang/String; = " -> "


# instance fields
.field private final encodedLetterLength:I

.field private final encodedToOriginal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final originalToEncoded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .param p3, "encodedLetterLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 101
    .local p1, "originalToEncoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, "encodedToOriginal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    .line 104
    iput-object p2, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedToOriginal:Ljava/util/Map;

    .line 105
    iput p3, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    .line 106
    return-void
.end method

.method private addSingleEncoding(ILjava/lang/String;Ljava/util/Collection;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 9
    .param p1, "level"    # I
    .param p2, "currentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p3, "encoding":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .local p4, "originals":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local p5, "doNotEncodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-lez p1, :cond_4

    .line 231
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    .local v1, "encodingLetter":I
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    if-ne p1, v2, :cond_0

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    :cond_0
    add-int/lit8 v4, p1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    invoke-static {v1}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->addSingleEncoding(ILjava/lang/String;Ljava/util/Collection;Ljava/util/Iterator;Ljava/util/Map;)V

    .line 249
    .end local v1    # "encodingLetter":I
    :cond_1
    goto :goto_0

    .line 247
    .restart local v1    # "encodingLetter":I
    :cond_2
    return-void

    .line 249
    .end local v1    # "encodingLetter":I
    :cond_3
    goto :goto_2

    .line 251
    :cond_4
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 253
    .local v0, "next":Ljava/lang/Integer;
    :goto_1
    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "originalLetterAsString":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedToOriginal:Ljava/util/Map;

    invoke-interface {v2, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 261
    return-void

    .line 264
    :cond_5
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    .line 265
    .end local v1    # "originalLetterAsString":Ljava/lang/String;
    goto :goto_1

    .line 267
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .restart local v1    # "originalLetterAsString":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedToOriginal:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v0    # "next":Ljava/lang/Integer;
    .end local v1    # "originalLetterAsString":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method private static codePointToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .line 515
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 516
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static convertCharsToIntegers([Ljava/lang/Character;)[Ljava/lang/Integer;
    .locals 3
    .param p0, "chars"    # [Ljava/lang/Character;

    .line 378
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 382
    .local v0, "integers":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 383
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 379
    .end local v0    # "integers":[Ljava/lang/Integer;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public static createConverter([Ljava/lang/Integer;[Ljava/lang/Integer;[Ljava/lang/Integer;)Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;
    .locals 16
    .param p0, "original"    # [Ljava/lang/Integer;
    .param p1, "encoding"    # [Ljava/lang/Integer;
    .param p2, "doNotEncode"    # [Ljava/lang/Integer;

    .line 410
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 411
    .local v0, "originalCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 412
    .local v1, "encodingCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 414
    .local v2, "doNotEncodeCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v3

    .line 415
    .local v9, "originalToEncoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v10, v3

    .line 416
    .local v10, "encodedToOriginal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v11, v3

    .line 420
    .local v11, "doNotEncodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 421
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "\'"

    if-eqz v5, :cond_1

    .line 428
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v4    # "i":I
    goto :goto_0

    .line 429
    .restart local v4    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not use \'do not encode\' list because encoding alphabet does not contain \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 431
    invoke-static {v4}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 422
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not use \'do not encode\' list because original alphabet does not contain \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 425
    invoke-static {v4}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    .end local v4    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 438
    const/4 v3, 0x1

    .line 440
    .local v3, "encodedLetterLength":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 442
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 443
    .local v6, "originalLetter":I
    nop

    .line 444
    invoke-static {v6}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, "originalLetterAsString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 447
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-interface {v10, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 452
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 454
    .local v8, "next":Ljava/lang/Integer;
    :goto_2
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 455
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Ljava/lang/Integer;

    goto :goto_2

    .line 458
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v12

    .line 460
    .local v12, "encodedLetter":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-interface {v10, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v6    # "originalLetter":I
    .end local v7    # "originalLetterAsString":Ljava/lang/String;
    .end local v8    # "next":Ljava/lang/Integer;
    .end local v12    # "encodedLetter":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .line 466
    :cond_5
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;

    invoke-direct {v5, v9, v10, v3}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v5

    .line 470
    .end local v3    # "encodedLetterLength":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    .line 478
    const/4 v3, 0x1

    .line 482
    .local v3, "lettersSoFar":I
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    sub-int/2addr v4, v5

    .line 483
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    move v12, v3

    move v13, v4

    .line 485
    .end local v3    # "lettersSoFar":I
    .local v12, "lettersSoFar":I
    .local v13, "lettersLeft":I
    :goto_4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    div-int v3, v13, v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_7

    .line 486
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    div-int/2addr v13, v3

    .line 487
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 490
    :cond_7
    add-int/lit8 v14, v12, 0x1

    .line 492
    .local v14, "encodedLetterLength":I
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;

    invoke-direct {v3, v9, v10, v14}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    move-object v15, v3

    .line 497
    .local v15, "ac":Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;
    const-string v5, ""

    .line 500
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 497
    move v4, v14

    move-object v6, v1

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->addSingleEncoding(ILjava/lang/String;Ljava/util/Collection;Ljava/util/Iterator;Ljava/util/Map;)V

    .line 503
    return-object v15

    .line 471
    .end local v12    # "lettersSoFar":I
    .end local v13    # "lettersLeft":I
    .end local v14    # "encodedLetterLength":I
    .end local v15    # "ac":Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Must have at least two encoding characters (excluding those in the \'do not encode\' list), but has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 474
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createConverterFromChars([Ljava/lang/Character;[Ljava/lang/Character;[Ljava/lang/Character;)Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;
    .locals 3
    .param p0, "original"    # [Ljava/lang/Character;
    .param p1, "encoding"    # [Ljava/lang/Character;
    .param p2, "doNotEncode"    # [Ljava/lang/Character;

    .line 365
    nop

    .line 366
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->convertCharsToIntegers([Ljava/lang/Character;)[Ljava/lang/Integer;

    move-result-object v0

    .line 367
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->convertCharsToIntegers([Ljava/lang/Character;)[Ljava/lang/Integer;

    move-result-object v1

    .line 368
    invoke-static {p2}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->convertCharsToIntegers([Ljava/lang/Character;)[Ljava/lang/Integer;

    move-result-object v2

    .line 365
    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->createConverter([Ljava/lang/Integer;[Ljava/lang/Integer;[Ljava/lang/Integer;)Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;

    move-result-object v0

    return-object v0
.end method

.method public static createConverterFromMap(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;"
        }
    .end annotation

    .line 323
    .local p0, "originalToEncoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    nop

    .line 324
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 325
    .local v0, "unmodifiableOriginalToEncoded":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 327
    .local v1, "encodedToOriginal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 330
    .local v2, "encodedLetterLength":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 331
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, "originalAsString":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 335
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 337
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "originalAsString":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    new-instance v3, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;

    invoke-direct {v3, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v3
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 157
    if-nez p1, :cond_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 165
    .local v2, "i":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    add-int/2addr v4, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_3

    .line 176
    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    add-int/2addr v4, v1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "nextGroup":Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedToOriginal:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "next":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 184
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v6, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    add-int/2addr v1, v6

    .line 187
    .end local v2    # "i":Ljava/lang/Integer;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "nextGroup":Ljava/lang/String;
    .end local v5    # "next":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 180
    .restart local v2    # "i":Ljava/lang/Integer;
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v4    # "nextGroup":Ljava/lang/String;
    .restart local v5    # "next":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/io/UnsupportedEncodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected string without decoding ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    .end local v4    # "nextGroup":Ljava/lang/String;
    .end local v5    # "next":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected end of string while decoding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    .end local v1    # "j":I
    .end local v2    # "i":Ljava/lang/Integer;
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "original"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 127
    .local v2, "codepoint":I
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    .local v3, "nextLetter":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 141
    .end local v2    # "codepoint":I
    .end local v3    # "nextLetter":Ljava/lang/String;
    goto :goto_0

    .line 130
    .restart local v2    # "codepoint":I
    .restart local v3    # "nextLetter":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find encoding for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 132
    invoke-static {v2}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    .end local v1    # "i":I
    .end local v2    # "codepoint":I
    .end local v3    # "nextLetter":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 291
    return v0

    .line 293
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 294
    return v1

    .line 296
    :cond_1
    instance-of v2, p1, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;

    if-nez v2, :cond_2

    .line 297
    return v0

    .line 299
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;

    .line 300
    .local v2, "other":Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    iget-object v4, v2, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedToOriginal:Ljava/util/Map;

    iget-object v4, v2, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedToOriginal:Ljava/util/Map;

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    iget v4, v2, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    if-ne v3, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 300
    :goto_0
    return v0
.end method

.method public getEncodedCharLength()I
    .locals 1

    .line 200
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    return v0
.end method

.method public getOriginalToEncoded()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 307
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedToOriginal:Ljava/util/Map;

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->encodedLetterLength:I

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 307
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->originalToEncoded:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 280
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/commons/text/AlphabetConverter;->codePointToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
