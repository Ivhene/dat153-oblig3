.class abstract Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;, "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;, "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;, "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet$1;-><init>(Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;, "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;->size()I

    move-result v0

    .line 44
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 26
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;, "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;, "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;, "Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;->size()I

    move-result v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/IndexedImmutableSet;)V

    const/16 v2, 0x511

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
