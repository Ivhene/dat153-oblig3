.class public final Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
.super Ljava/lang/Object;
.source "ImmutableIntArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$AsList;,
        Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;


# instance fields
.field private final array:[I

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    return-void
.end method

.method private constructor <init>([I)V
    .locals 2
    .param p1, "array"    # [I

    .line 347
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([III)V

    .line 348
    return-void
.end method

.method private constructor <init>([III)V
    .locals 0
    .param p1, "array"    # [I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    .line 352
    iput p2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    .line 353
    iput p3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    .line 354
    return-void
.end method

.method synthetic constructor <init>([IIILorg/checkerframework/com/google/common/primitives/ImmutableIntArray$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$1;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([III)V

    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;)[I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    .line 91
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 1

    .line 91
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    .line 91
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;
    .locals 2

    .line 202
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I

    .line 189
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 190
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .line 165
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 166
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->builder()Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$Builder;->build()Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;"
        }
    .end annotation

    .line 154
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    :goto_0
    return-object v0
.end method

.method public static copyOf(Ljava/util/stream/IntStream;)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "stream"    # Ljava/util/stream/IntStream;

    .line 174
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 175
    .local v0, "array":[I
    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    :goto_0
    return-object v1
.end method

.method public static copyOf([I)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "values"    # [I

    .line 149
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    :goto_0
    return-object v0
.end method

.method private isPartialView()Z
    .locals 2

    .line 609
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static of()Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 1

    .line 96
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    return-object v0
.end method

.method public static of(I)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "e0"    # I

    .line 101
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    filled-new-array {p0}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(II)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "e0"    # I
    .param p1, "e1"    # I

    .line 106
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    filled-new-array {p0, p1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(III)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I

    .line 111
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    filled-new-array {p0, p1, p2}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIII)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I

    .line 116
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    filled-new-array {p0, p1, p2, p3}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIII)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I
    .param p4, "e4"    # I

    .line 121
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    filled-new-array {p0, p1, p2, p3, p4}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static of(IIIIII)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 3
    .param p0, "e0"    # I
    .param p1, "e1"    # I
    .param p2, "e2"    # I
    .param p3, "e3"    # I
    .param p4, "e4"    # I
    .param p5, "e5"    # I

    .line 126
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p3, v1, v2

    const/4 v2, 0x4

    aput p4, v1, v2

    const/4 v2, 0x5

    aput p5, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v0
.end method

.method public static varargs of(I[I)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 4
    .param p0, "first"    # I
    .param p1, "rest"    # [I

    .line 139
    array-length v0, p1

    const v1, 0x7ffffffe

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "the total number of elements must fit in an int"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 141
    array-length v0, p1

    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 142
    .local v0, "array":[I
    aput p0, v0, v3

    .line 143
    array-length v1, p1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    return-object v1
.end method

.method private spliterator()Ljava/util/Spliterator$OfInt;
    .locals 4

    .line 444
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    const/16 v3, 0x410

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$AsList;-><init>(Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 408
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 550
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 551
    return v0

    .line 553
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 554
    return v2

    .line 556
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    .line 557
    .local v1, "that":Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 558
    return v2

    .line 560
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 561
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 562
    return v2

    .line 560
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 413
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 2
    .param p1, "index"    # I

    .line 373
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 374
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 571
    const/4 v0, 0x1

    .line 572
    .local v0, "hash":I
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v1, v2, :cond_0

    .line 573
    mul-int/lit8 v0, v0, 0x1f

    .line 574
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v1

    invoke-static {v2}, Lorg/checkerframework/com/google/common/primitives/Ints;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "target"    # I

    .line 382
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v0, v1, :cond_1

    .line 383
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 384
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 363
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 3
    .param p1, "target"    # I

    .line 395
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    if-lt v0, v1, :cond_1

    .line 396
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 397
    sub-int v1, v0, v1

    return v1

    .line 395
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public length()I
    .locals 2

    .line 358
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public stream()Ljava/util/stream/IntStream;
    .locals 3

    .line 421
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public subArray(II)Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 437
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 438
    if-ne p1, p2, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([III)V

    :goto_0
    return-object v0
.end method

.method public toArray()[I
    .locals 3

    .line 426
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 585
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const-string v0, "[]"

    return-object v0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 589
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->end:I

    if-ge v1, v2, :cond_1

    .line 592
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->array:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimmed()Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;
    .locals 2

    .line 605
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->toArray()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;-><init>([I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;->trimmed()Lorg/checkerframework/com/google/common/primitives/ImmutableIntArray;

    move-result-object v0

    return-object v0
.end method
