.class final Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/cache/LocalCache<",
        "TK;TV;>.AbstractCacheSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;)V"
        }
    .end annotation

    .line 4637
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    .line 4638
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$AbstractCacheSet;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4639
    return-void
.end method

.method static synthetic lambda$removeIf$0(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "filter"    # Ljava/util/function/Predicate;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 4649
    invoke-static {p1, p2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 4654
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4655
    return v1

    .line 4657
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 4658
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4659
    .local v2, "key":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 4660
    return v1

    .line 4662
    :cond_1
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v3, v2}, Lorg/checkerframework/com/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4664
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_2

    iget-object v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    iget-object v4, v4, Lorg/checkerframework/com/google/common/cache/LocalCache;->valueEquivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4643
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntryIterator;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 4669
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4670
    return v1

    .line 4672
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 4673
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4674
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/checkerframework/com/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 4648
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    new-instance v1, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$EntrySet$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->removeIf(Ljava/util/function/BiPredicate;)Z

    move-result v0

    return v0
.end method
