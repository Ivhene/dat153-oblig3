.class public final Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableDoubleArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[D

.field private count:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 218
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    .line 219
    return-void
.end method

.method private ensureRoomFor(I)V
    .locals 5
    .param p1, "numberToAdd"    # I

    .line 295
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/2addr v0, p1

    .line 296
    .local v0, "newCount":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 297
    array-length v1, v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->expandedCapacity(II)I

    move-result v1

    new-array v1, v1, [D

    .line 298
    .local v1, "newArray":[D
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iput-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    .line 301
    .end local v1    # "newArray":[D
    :cond_0
    return-void
.end method

.method private static expandedCapacity(II)I
    .locals 2
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I

    .line 305
    if-ltz p1, :cond_2

    .line 309
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 310
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 311
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 313
    :cond_0
    if-gez v0, :cond_1

    .line 314
    const v0, 0x7fffffff

    .line 316
    :cond_1
    return v0

    .line 306
    .end local v0    # "newCapacity":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public add(D)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 3
    .param p1, "value"    # D

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 227
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    aput-wide p1, v1, v2

    .line 228
    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 229
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 248
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 249
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->addAll(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;

    move-result-object v0

    return-object v0

    .line 251
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 252
    .local v1, "value":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->add(D)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;

    .line 253
    .end local v1    # "value":Ljava/lang/Double;
    goto :goto_0

    .line 254
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;"
        }
    .end annotation

    .line 262
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 263
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 264
    .local v1, "value":Ljava/lang/Double;
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 265
    .end local v1    # "value":Ljava/lang/Double;
    goto :goto_0

    .line 266
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/stream/DoubleStream;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 5
    .param p1, "stream"    # Ljava/util/stream/DoubleStream;

    .line 274
    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    .line 275
    .local v0, "spliterator":Ljava/util/Spliterator$OfDouble;
    invoke-interface {v0}, Ljava/util/Spliterator$OfDouble;->getExactSizeIfKnown()J

    move-result-wide v1

    .line 276
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 277
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 279
    :cond_0
    new-instance v3, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;)V

    invoke-interface {v0, v3}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    .line 280
    return-object p0
.end method

.method public addAll(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 5
    .param p1, "values"    # Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    .line 288
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 289
    invoke-static {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->access$000(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)[D

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->access$100(Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;)I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 291
    return-object p0
.end method

.method public addAll([D)Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;
    .locals 4
    .param p1, "values"    # [D

    .line 237
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->ensureRoomFor(I)V

    .line 238
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    .line 240
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;
    .locals 5
    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 329
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;->access$200()Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->array:[D

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$Builder;->count:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray;-><init>([DIILorg/checkerframework/com/google/common/primitives/ImmutableDoubleArray$1;)V

    :goto_0
    return-object v0
.end method
