.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;
.super Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    .line 1373
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1393
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1381
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1376
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1398
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    const/4 v0, 0x0

    return v0

    .line 1401
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1402
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->access$300(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V

    .line 1403
    const/4 v1, 0x1

    return v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1386
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    new-instance v2, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    invoke-static {v0, v2}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
