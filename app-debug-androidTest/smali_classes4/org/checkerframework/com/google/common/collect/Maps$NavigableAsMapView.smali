.class final Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;
.super Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NavigableAsMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final function:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 1022
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    .local p1, "ks":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    .local p2, "vFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 1023
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    .line 1024
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    .line 1025
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1066
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->clear()V

    .line 1067
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1045
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1086
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1101
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
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

    .line 1071
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1076
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;)V

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1081
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->forEach(Ljava/util/function/Consumer;)V

    .line 1082
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1050
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1055
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    move-object v0, p1

    .line 1058
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v1, v0}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1060
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    return-object p2
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1035
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$entrySpliterator$0$org-checkerframework-com-google-common-collect-Maps$NavigableAsMapView(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .line 1076
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$forEach$1$org-checkerframework-com-google-common-collect-Maps$NavigableAsMapView(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/BiConsumer;
    .param p2, "k"    # Ljava/lang/Object;

    .line 1081
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v0, p2}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1091
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1096
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1030
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1040
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;, "Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->set:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asMap(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
