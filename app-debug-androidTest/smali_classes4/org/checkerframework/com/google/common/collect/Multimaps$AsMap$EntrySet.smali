.class Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;
.super Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
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
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;

    .line 1841
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 1849
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;

    .line 1850
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;->access$200(Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;)Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet$1;-><init>(Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;)V

    .line 1849
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

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

    .line 1844
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1861
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1862
    const/4 v0, 0x0

    return v0

    .line 1864
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1865
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;->removeValuesForKey(Ljava/lang/Object;)V

    .line 1866
    const/4 v1, 0x1

    return v1
.end method
