.class public final Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
.super Ljava/lang/Object;
.source "ImmutableLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;,
        Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;


# instance fields
.field private final array:[J

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    return-void
.end method

.method private constructor <init>([J)V
    .locals 2
    .param p1, "array"    # [J

    .line 349
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([JII)V

    .line 350
    return-void
.end method

.method private constructor <init>([JII)V
    .locals 0
    .param p1, "array"    # [J
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    .line 354
    iput p2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    .line 355
    iput p3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    .line 356
    return-void
.end method

.method synthetic constructor <init>([JIILorg/checkerframework/com/google/common/primitives/ImmutableLongArray$1;)V
    .locals 0
    .param p1, "x0"    # [J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$1;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([JII)V

    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)[J
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    .line 91
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 1

    .line 91
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    .line 91
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 2

    .line 204
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I

    .line 191
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 192
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;"
        }
    .end annotation

    .line 167
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 168
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->builder()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->build()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;"
        }
    .end annotation

    .line 156
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    :goto_0
    return-object v0
.end method

.method public static copyOf(Ljava/util/stream/LongStream;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 2
    .param p0, "stream"    # Ljava/util/stream/LongStream;

    .line 176
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    .line 177
    .local v0, "array":[J
    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    :goto_0
    return-object v1
.end method

.method public static copyOf([J)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 2
    .param p0, "values"    # [J

    .line 149
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    array-length v1, p0

    .line 151
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    .line 149
    :goto_0
    return-object v0
.end method

.method private isPartialView()Z
    .locals 2

    .line 611
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

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

.method public static of()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 1

    .line 96
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    return-object v0
.end method

.method public static of(J)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 3
    .param p0, "e0"    # J

    .line 101
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJ)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 3
    .param p0, "e0"    # J
    .param p2, "e1"    # J

    .line 106
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJ)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 3
    .param p0, "e0"    # J
    .param p2, "e1"    # J
    .param p4, "e2"    # J

    .line 111
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJ)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 3
    .param p0, "e0"    # J
    .param p2, "e1"    # J
    .param p4, "e2"    # J
    .param p6, "e3"    # J

    .line 116
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJJ)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 3
    .param p0, "e0"    # J
    .param p2, "e1"    # J
    .param p4, "e2"    # J
    .param p6, "e3"    # J
    .param p8, "e4"    # J

    .line 121
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x5

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static of(JJJJJJ)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 3
    .param p0, "e0"    # J
    .param p2, "e1"    # J
    .param p4, "e2"    # J
    .param p6, "e3"    # J
    .param p8, "e4"    # J
    .param p10, "e5"    # J

    .line 126
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v1, 0x6

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    const/4 v2, 0x4

    aput-wide p8, v1, v2

    const/4 v2, 0x5

    aput-wide p10, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v0
.end method

.method public static varargs of(J[J)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 4
    .param p0, "first"    # J
    .param p2, "rest"    # [J

    .line 139
    array-length v0, p2

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
    array-length v0, p2

    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 142
    .local v0, "array":[J
    aput-wide p0, v0, v3

    .line 143
    array-length v1, p2

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    return-object v1
.end method

.method private spliterator()Ljava/util/Spliterator$OfLong;
    .locals 4

    .line 446
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    const/16 v3, 0x410

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$AsList;-><init>(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$1;)V

    return-object v0
.end method

.method public contains(J)Z
    .locals 1
    .param p1, "target"    # J

    .line 410
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->indexOf(J)I

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
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 552
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 553
    return v0

    .line 555
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 556
    return v2

    .line 558
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    .line 559
    .local v1, "that":Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 560
    return v2

    .line 562
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 563
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v4

    invoke-virtual {v1, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->get(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 564
    return v2

    .line 562
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 567
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 415
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    if-ge v0, v1, :cond_0

    .line 417
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)J
    .locals 2
    .param p1, "index"    # I

    .line 375
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 376
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 573
    const/4 v0, 0x1

    .line 574
    .local v0, "hash":I
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    if-ge v1, v2, :cond_0

    .line 575
    mul-int/lit8 v0, v0, 0x1f

    .line 576
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/primitives/Longs;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(J)I
    .locals 3
    .param p1, "target"    # J

    .line 384
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 386
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 384
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 365
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(J)I
    .locals 4
    .param p1, "target"    # J

    .line 397
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    if-lt v0, v1, :cond_1

    .line 398
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 399
    sub-int v1, v0, v1

    return v1

    .line 397
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 402
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public length()I
    .locals 2

    .line 360
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public stream()Ljava/util/stream/LongStream;
    .locals 3

    .line 423
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->stream([JII)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public subArray(II)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 439
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 440
    if-ne p1, p2, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([JII)V

    :goto_0
    return-object v0
.end method

.method public toArray()[J
    .locals 3

    .line 428
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 587
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const-string v0, "[]"

    return-object v0

    .line 590
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 591
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 593
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->end:I

    if-ge v1, v2, :cond_1

    .line 594
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->array:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimmed()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 2

    .line 607
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->toArray()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([J)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->trimmed()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    return-object v0
.end method
