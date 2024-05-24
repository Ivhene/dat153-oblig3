.class Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;
.super Lorg/checkerframework/com/google/common/collect/Maps$KeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    .line 2927
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    .line 2928
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 2929
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2933
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2934
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2935
    const/4 v0, 0x1

    return v0

    .line 2937
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2942
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->removeAllKeys(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2947
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->retainAllKeys(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 2953
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2958
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
