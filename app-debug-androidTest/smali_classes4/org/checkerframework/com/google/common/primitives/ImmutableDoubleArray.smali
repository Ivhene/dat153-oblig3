.class public final Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;,
        Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;


# instance fields
.field private final array:[D

.field private final end:I

.field private final transient start:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x0

    new-array v1, v1, [D

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    return-void
.end method

.method private constructor <init>([D)V
    .locals 2
    .param p1, "array"    # [D

    .line 350
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    .line 351
    return-void
.end method

.method private constructor <init>([DII)V
    .locals 0
    .param p1, "array"    # [D
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    .line 355
    iput p2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    .line 356
    iput p3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    .line 357
    return-void
.end method

.method synthetic constructor <init>([DIILorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$1;)V
    .locals 0
    .param p1, "x0"    # [D
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$1;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)[D
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    .line 91
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    return v0
.end method

.method static synthetic access$200()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .line 91
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    .line 91
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(DD)Z
    .locals 1
    .param p0, "x0"    # D
    .param p2, "x1"    # D

    .line 91
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v0

    return v0
.end method

.method private static areEqual(DD)Z
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 575
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static builder()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2

    .line 205
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(I)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 2
    .param p0, "initialCapacity"    # I

    .line 192
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 193
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 168
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 169
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->builder()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->build()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;"
        }
    .end annotation

    .line 157
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    :goto_0
    return-object v0
.end method

.method public static copyOf(Ljava/util/stream/DoubleStream;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .param p0, "stream"    # Ljava/util/stream/DoubleStream;

    .line 177
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    .line 178
    .local v0, "array":[D
    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    :goto_0
    return-object v1
.end method

.method public static copyOf([D)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 2
    .param p0, "values"    # [D

    .line 150
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    array-length v1, p0

    .line 152
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    .line 150
    :goto_0
    return-object v0
.end method

.method private isPartialView()Z
    .locals 2

    .line 619
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

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

.method public static of()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 1

    .line 96
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    return-object v0
.end method

.method public static of(D)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D

    .line 101
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DD)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D

    .line 106
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDD)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D

    .line 111
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x3

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDD)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D

    .line 116
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 v2, 0x1

    aput-wide p2, v1, v2

    const/4 v2, 0x2

    aput-wide p4, v1, v2

    const/4 v2, 0x3

    aput-wide p6, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDD)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D

    .line 121
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x5

    new-array v1, v1, [D

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

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static of(DDDDDD)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 3
    .param p0, "e0"    # D
    .param p2, "e1"    # D
    .param p4, "e2"    # D
    .param p6, "e3"    # D
    .param p8, "e4"    # D
    .param p10, "e5"    # D

    .line 127
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v1, 0x6

    new-array v1, v1, [D

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

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v0
.end method

.method public static varargs of(D[D)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p0, "first"    # D
    .param p2, "rest"    # [D

    .line 140
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

    .line 142
    array-length v0, p2

    add-int/2addr v0, v2

    new-array v0, v0, [D

    .line 143
    .local v0, "array":[D
    aput-wide p0, v0, v3

    .line 144
    array-length v1, p2

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    new-instance v1, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    return-object v1
.end method

.method private spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 4

    .line 449
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    const/16 v3, 0x410

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$AsList;-><init>(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$1;)V

    return-object v0
.end method

.method public contains(D)Z
    .locals 1
    .param p1, "target"    # D

    .line 413
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->indexOf(D)I

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

    .line 555
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 556
    return v0

    .line 558
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 559
    return v2

    .line 561
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    .line 562
    .local v1, "that":Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v3

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 563
    return v2

    .line 565
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 566
    invoke-virtual {p0, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v4

    invoke-virtual {v1, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->get(I)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v4

    if-nez v4, :cond_3

    .line 567
    return v2

    .line 565
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 570
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 418
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v1, :cond_0

    .line 420
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)D
    .locals 2
    .param p1, "index"    # I

    .line 376
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 377
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 581
    const/4 v0, 0x1

    .line 582
    .local v0, "hash":I
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_0

    .line 583
    mul-int/lit8 v0, v0, 0x1f

    .line 584
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/primitives/Doubles;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(D)I
    .locals 3
    .param p1, "target"    # D

    .line 386
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v0, v1, :cond_1

    .line 387
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v1, v1, v0

    invoke-static {v1, v2, p1, p2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 366
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(D)I
    .locals 3
    .param p1, "target"    # D

    .line 400
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    if-lt v0, v1, :cond_1

    .line 401
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v1, v1, v0

    invoke-static {v1, v2, p1, p2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->areEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int v1, v0, v1

    return v1

    .line 400
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public length()I
    .locals 2

    .line 361
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public stream()Ljava/util/stream/DoubleStream;
    .locals 3

    .line 426
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->stream([DII)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public subArray(II)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 442
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 443
    if-ne p1, p2, :cond_0

    sget-object v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->EMPTY:Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([DII)V

    :goto_0
    return-object v0
.end method

.method public toArray()[D
    .locals 3

    .line 431
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 595
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "[]"

    return-object v0

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 599
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 601
    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->start:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->end:I

    if-ge v1, v2, :cond_1

    .line 602
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->array:[D

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimmed()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 2

    .line 615
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->toArray()[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([D)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->trimmed()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    return-object v0
.end method
