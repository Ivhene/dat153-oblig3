.class public Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;
.super Ljava/lang/Object;
.source "RandomStringGenerator.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/Builder<",
        "Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = 0x0

.field public static final DEFAULT_MAXIMUM_CODE_POINT:I = 0x10ffff

.field public static final DEFAULT_MINIMUM_CODE_POINT:I


# instance fields
.field private characterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private inclusivePredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private maximumCodePoint:I

.field private minimumCodePoint:I

.field private random:Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    .line 278
    const v0, 0x10ffff

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->build()Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;
    .locals 8

    .line 462
    new-instance v7, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->random:Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;

    iget-object v5, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;Ljava/util/List;Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$1;)V

    return-object v7
.end method

.method public varargs filteredBy([Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;)Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;
    .locals 1
    .param p1, "predicates"    # [Lorg/checkerframework/org/apache/commons/text/CharacterPredicate;

    .line 379
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 385
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 390
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 392
    return-object p0

    .line 380
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    .line 381
    return-object p0
.end method

.method public varargs selectFrom([C)Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;
    .locals 5
    .param p1, "chars"    # [C

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    .line 450
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    .line 451
    .local v2, "c":C
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_0
    return-object p0
.end method

.method public usingRandom(Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;)Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;
    .locals 0
    .param p1, "random"    # Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;

    .line 427
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->random:Lorg/checkerframework/org/apache/commons/text/TextRandomProvider;

    .line 428
    return-object p0
.end method

.method public withinRange(II)Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;
    .locals 6
    .param p1, "minimumCodePoint"    # I
    .param p2, "maximumCodePoint"    # I

    .line 315
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 316
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 315
    const-string v4, "Minimum code point %d is larger than maximum code point %d"

    invoke-static {v2, v4, v3}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 317
    if-ltz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Minimum code point %d is negative"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 318
    const v2, 0x10ffff

    if-gt p2, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, "Value %d is larger than Character.MAX_CODE_POINT."

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 321
    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    .line 322
    iput p2, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    .line 323
    return-object p0
.end method

.method public varargs withinRange([[C)Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;
    .locals 9
    .param p1, "pairs"    # [[C

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    .line 346
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 347
    .local v3, "pair":[C
    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    const-string v5, "Each pair must contain minimum and maximum code point"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 349
    aget-char v4, v3, v1

    .line 350
    .local v4, "minimumCodePoint":I
    aget-char v5, v3, v6

    .line 351
    .local v5, "maximumCodePoint":I
    if-gt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    .line 352
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 351
    const-string v8, "Minimum code point %d is larger than maximum code point %d"

    invoke-static {v6, v8, v7}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 354
    move v6, v4

    .local v6, "index":I
    :goto_3
    if-gt v6, v5, :cond_2

    .line 355
    iget-object v7, p0, Lorg/checkerframework/org/apache/commons/text/RandomStringGenerator$Builder;->characterList:Ljava/util/List;

    int-to-char v8, v6

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 346
    .end local v3    # "pair":[C
    .end local v4    # "minimumCodePoint":I
    .end local v5    # "maximumCodePoint":I
    .end local v6    # "index":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_3
    return-object p0
.end method
