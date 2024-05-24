.class public abstract Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .line 393
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expandedCapacity(II)I
    .locals 2
    .param p0, "oldCapacity"    # I
    .param p1, "minCapacity"    # I

    .line 378
    if-ltz p1, :cond_2

    .line 382
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 383
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_0

    .line 384
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 386
    :cond_0
    if-gez v0, :cond_1

    .line 387
    const v0, 0x7fffffff

    .line 390
    :cond_1
    return v0

    .line 379
    .end local v0    # "newCapacity":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "cannot store more than MAX_VALUE elements"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 420
    .local v2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 419
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 438
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    .line 439
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 440
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    .line 458
    :cond_0
    return-object p0
.end method

.method public abstract build()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TE;>;"
        }
    .end annotation
.end method