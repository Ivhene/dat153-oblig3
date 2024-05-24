.class Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;
.super Lorg/checkerframework/com/google/common/collect/AbstractMultiset;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMultiset<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final multimap:Lorg/checkerframework/com/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1681
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultiset;-><init>()V

    .line 1682
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    .line 1683
    return-void
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .locals 1
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 1714
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1771
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->clear()V

    .line 1772
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 1729
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 1739
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1740
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method distinctElements()I
    .locals 1

    .line 1719
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1781
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1776
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 1687
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    .line 1688
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$1;-><init>(Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;Ljava/util/Iterator;)V

    .line 1687
    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1713
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1715
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1734
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "occurrences"    # I

    .line 1745
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 1746
    if-nez p2, :cond_0

    .line 1747
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1750
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1752
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_1

    .line 1753
    const/4 v1, 0x0

    return v1

    .line 1756
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1757
    .local v1, "oldCount":I
    if-lt p2, v1, :cond_2

    .line 1758
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_1

    .line 1760
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1761
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_3

    .line 1762
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1763
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1761
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1766
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 1724
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 1708
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;, "Lorg/checkerframework/com/google/common/collect/Multimaps$Keys<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;->multimap:Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
