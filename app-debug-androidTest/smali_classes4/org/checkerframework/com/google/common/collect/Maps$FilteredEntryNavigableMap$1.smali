.class Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;
.super Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    .line 3084
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;"
    .local p2, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3087
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;->access$500(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

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

    .line 3092
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;->access$500(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;->retainAllKeys(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
