.class Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;
.super Ljava/lang/Object;
.source "TreeRangeMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/RangeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubRangeMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/RangeMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final subRange:Lorg/checkerframework/com/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .line 454
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p2, "subRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    .line 456
    return-void
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 450
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)V

    return-object v0
.end method

.method public asMapOfRanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 571
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 537
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 538
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 609
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 610
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/RangeMap;

    .line 611
    .local v0, "rangeMap":Lorg/checkerframework/com/google/common/collect/RangeMap;, "Lorg/checkerframework/com/google/common/collect/RangeMap<**>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 613
    .end local v0    # "rangeMap":Lorg/checkerframework/com/google/common/collect/RangeMap;, "Lorg/checkerframework/com/google/common/collect/RangeMap<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 467
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;"
    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1

    .line 471
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Range<TK;>;TV;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 618
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public merge(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)V"
        }
    .end annotation

    .line 552
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    .line 553
    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    .line 552
    const-string v2, "Cannot merge range %s into a subRangeMap(%s)"

    invoke-static {v0, v2, p1, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->merge(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    .line 558
    return-void
.end method

.method public put(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 504
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    .line 505
    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    .line 504
    const-string v2, "Cannot put range %s into a subRangeMap(%s)"

    invoke-static {v0, v2, p1, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->put(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/RangeMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 523
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "rangeMap":Lorg/checkerframework/com/google/common/collect/RangeMap;, "Lorg/checkerframework/com/google/common/collect/RangeMap<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/RangeMap;->span()Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 527
    .local v0, "span":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    .line 528
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    .line 527
    const-string v3, "Cannot putAll rangeMap with span %s into a subRangeMap(%s)"

    invoke-static {v1, v3, v0, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->putAll(Lorg/checkerframework/com/google/common/collect/RangeMap;)V

    .line 533
    return-void
.end method

.method public putCoalescing(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 511
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Range;->encloses(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$100(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    .line 518
    .local v0, "coalescedRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->put(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V

    .line 519
    return-void

    .line 512
    .end local v0    # "coalescedRange":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->put(Lorg/checkerframework/com/google/common/collect/Range;Ljava/lang/Object;)V

    .line 513
    return-void
.end method

.method public remove(Lorg/checkerframework/com/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .line 542
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->remove(Lorg/checkerframework/com/google/common/collect/Range;)V

    .line 545
    :cond_0
    return-void
.end method

.method public span()Lorg/checkerframework/com/google/common/collect/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    .line 478
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 479
    .local v0, "lowerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TK;>;Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v1

    if-lez v1, :cond_0

    .line 481
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .local v1, "lowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    goto :goto_0

    .line 483
    .end local v1    # "lowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->lowerBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Cut;

    .line 484
    .restart local v1    # "lowerBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v2, v2, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v2

    if-gez v2, :cond_3

    .line 490
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    .line 491
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 492
    .local v2, "upperEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TK;>;Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v2, :cond_2

    .line 494
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v4, v4, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Cut;->compareTo(Lorg/checkerframework/com/google/common/collect/Cut;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 495
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    iget-object v3, v3, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    .local v3, "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    goto :goto_1

    .line 497
    .end local v3    # "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lorg/checkerframework/com/google/common/collect/Cut;

    move-result-object v3

    .line 499
    .restart local v3    # "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    :goto_1
    invoke-static {v1, v3}, Lorg/checkerframework/com/google/common/collect/Range;->create(Lorg/checkerframework/com/google/common/collect/Cut;Lorg/checkerframework/com/google/common/collect/Cut;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v4

    return-object v4

    .line 493
    .end local v3    # "upperBound":Lorg/checkerframework/com/google/common/collect/Cut;, "Lorg/checkerframework/com/google/common/collect/Cut<TK;>;"
    :cond_2
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 485
    .end local v2    # "upperEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/checkerframework/com/google/common/collect/Cut<TK;>;Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    :cond_3
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/google/common/collect/Range;->isConnected(Lorg/checkerframework/com/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$200(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Lorg/checkerframework/com/google/common/collect/RangeMap;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->subRange:Lorg/checkerframework/com/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/google/common/collect/Range;->intersection(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->subRangeMap(Lorg/checkerframework/com/google/common/collect/Range;)Lorg/checkerframework/com/google/common/collect/RangeMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 623
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<TK;TV;>.SubRangeMap;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method