.class public final Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
.super Ljava/lang/Object;
.source "ImmutableLongArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private array:[J

.field private count:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 217
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    .line 218
    return-void
.end method

.method private ensureRoomFor(I)V
    .locals 5
    .param p1, "numberToAdd"    # I

    .line 294
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/2addr v0, p1

    .line 295
    .local v0, "newCount":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 296
    array-length v1, v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->expandedCapacity(II)I

    move-result v1

    new-array v1, v1, [J

    .line 297
    .local v1, "newArray":[J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    .line 300
    .end local v1    # "newArray":[J
    :cond_0
    return-void
.end method

.method private static expandedCapacity(II)I
    .locals 2
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I

    .line 304
    if-ltz p1, :cond_2

    .line 308
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 309
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 310
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 312
    :cond_0
    if-gez v0, :cond_1

    .line 313
    const v0, 0x7fffffff

    .line 315
    :cond_1
    return v0

    .line 305
    .end local v0    # "newCapacity":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public add(J)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 3
    .param p1, "value"    # J

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 226
    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    aput-wide p1, v1, v2

    .line 227
    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 228
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;"
        }
    .end annotation

    .line 247
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Long;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 248
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->addAll(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 251
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->add(J)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;

    .line 252
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 253
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;"
        }
    .end annotation

    .line 261
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 262
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 263
    .local v1, "value":Ljava/lang/Long;
    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 264
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 265
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/stream/LongStream;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 5
    .param p1, "stream"    # Ljava/util/stream/LongStream;

    .line 273
    invoke-interface {p1}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    .line 274
    .local v0, "spliterator":Ljava/util/Spliterator$OfLong;
    invoke-interface {v0}, Ljava/util/Spliterator$OfLong;->getExactSizeIfKnown()J

    move-result-wide v1

    .line 275
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 276
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 278
    :cond_0
    new-instance v3, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;)V

    invoke-interface {v0, v3}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    .line 279
    return-object p0
.end method

.method public addAll(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 5
    .param p1, "values"    # Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    .line 287
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 288
    invoke-static {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->access$000(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)[J

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->access$100(Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;)I

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v3, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 290
    return-object p0
.end method

.method public addAll([J)Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;
    .locals 4
    .param p1, "values"    # [J

    .line 236
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->ensureRoomFor(I)V

    .line 237
    iget-object v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    .line 239
    return-object p0
.end method

.method public build()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;
    .locals 5
    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .line 328
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;->access$200()Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->array:[J

    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray$Builder;->count:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/checkerframework/com/google/common/primitives/ImmutableLongArray;-><init>([JIILorg/checkerframework/com/google/common/primitives/ImmutableLongArray$1;)V

    :goto_0
    return-object v0
.end method
