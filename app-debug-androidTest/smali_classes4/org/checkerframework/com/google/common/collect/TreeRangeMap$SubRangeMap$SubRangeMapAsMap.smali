.class Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
.super Ljava/util/AbstractMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubRangeMapAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lorg/checkerframework/com/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 626
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Lorg/checkerframework/com/google/common/base/Predicate;)Z
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/base/Predicate;

    .line 626
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->removeEntryIf(Lorg/checkerframework/com/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method private removeEntryIf(Lorg/checkerframework/com/google/common/base/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;>;)Z"
        }
    .end annotation

    .line 684
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 685
    .local v0, "toRemove":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/google/common/collect/Range<TK;>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 686
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;"
    invoke-interface {p1, v2}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;"
    :cond_0
    goto :goto_0

    .line 690
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Range;

    .line 691
    .local v2, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-virtual {v3, v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 692
    .end local v2    # "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    goto :goto_1

    .line 693
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 680
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->clear()V

    .line 681
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 630
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 742
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 745
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    .line 747
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .line 746
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 748
    .local v0, "cutToStart":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    .line 749
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 750
    .local v1, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;

    invoke-direct {v2, p0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 713
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$2;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/collect/Range;

    if-eqz v1, :cond_4

    .line 638
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    .line 639
    .local v1, "r":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 642
    :cond_0
    const/4 v2, 0x0

    .line 643
    .local v2, "candidate":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    iget-object v3, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v4

    iget-object v4, v4, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v3

    if-nez v3, :cond_2

    .line 645
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    .line 646
    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v3

    iget-object v4, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 647
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TK;>;Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v3, :cond_1

    .line 648
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;

    move-object v2, v4

    .line 650
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TK;>;Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    :cond_1
    goto :goto_0

    .line 651
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v3

    iget-object v4, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;

    move-object v2, v3

    .line 654
    :goto_0
    if-eqz v2, :cond_4

    .line 655
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 656
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 657
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    .end local v2    # "candidate":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :cond_3
    :goto_1
    return-object v0

    .line 662
    .end local v1    # "r":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    :cond_4
    nop

    .line 663
    return-object v0

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/ClassCastException;
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;>;"
        }
    .end annotation

    .line 698
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 668
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 669
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 671
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    .line 672
    .local v1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 673
    return-object v0

    .line 675
    .end local v1    # "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 770
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;

    invoke-direct {v0, p0, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$4;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Map;)V

    return-object v0
.end method
