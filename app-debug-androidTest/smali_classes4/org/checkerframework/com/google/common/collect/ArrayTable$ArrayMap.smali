.class abstract Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;
.super Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    .local p1, "keyIndex":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TK;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 179
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;Lorg/checkerframework/com/google/common/collect/ArrayTable$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/ArrayTable$1;

    .line 175
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 276
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 246
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$2;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;I)V

    return-object v0
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->size()I

    move-result v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;)V

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 252
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    return-object v1

    .line 255
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getEntry(I)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 209
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;I)V

    return-object v0
.end method

.method getKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getKeyRole()Ljava/lang/String;
.end method

.method abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .line 204
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 262
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 263
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->getKeyRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method abstract setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .line 199
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->keyIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
