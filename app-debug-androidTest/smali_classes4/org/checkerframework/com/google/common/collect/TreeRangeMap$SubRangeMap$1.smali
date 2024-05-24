.class Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;
.super Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->asDescendingMapOfRanges()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/TreeRangeMap<",
        "TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 576
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)V

    return-void
.end method


# virtual methods
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

    .line 580
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;, "Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterators;->emptyIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lorg/checkerframework/com/google/common/collect/TreeRangeMap;

    .line 584
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap;->access$000(Lorg/checkerframework/com/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 585
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap;)Lorg/checkerframework/com/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Range;->upperBound:Lorg/checkerframework/com/google/common/collect/Cut;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 588
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 589
    .local v0, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1$1;-><init>(Lorg/checkerframework/com/google/common/collect/TreeRangeMap$SubRangeMap$1;Ljava/util/Iterator;)V

    return-object v1
.end method
