.class Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;
.super Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedEntriesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field final fromMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field final transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .line 2012
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    .local p1, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p2, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 2013
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 2014
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    .line 2015
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2053
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2054
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 2024
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 2063
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 2064
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asEntryToEntryFunction(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    .line 2063
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

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
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 2069
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 2070
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Maps;->asEntryToEntryFunction(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    .line 2069
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
            "-TK;-TV2;>;)V"
        }
    .end annotation

    .line 2075
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV2;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2078
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 2029
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
            "TV2;)TV2;"
        }
    .end annotation

    .line 2036
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV2;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2037
    .local v0, "value":Ljava/lang/Object;, "TV1;"
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2038
    :cond_0
    move-object v1, p2

    goto :goto_1

    .line 2037
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    .line 2038
    invoke-interface {v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2037
    :goto_1
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2058
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$forEach$0$org-checkerframework-com-google-common-collect-Maps$TransformedEntriesMap(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/BiConsumer;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v1"    # Ljava/lang/Object;

    .line 2077
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    invoke-interface {v0, p2, p3}, Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 2046
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->transformer:Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    .line 2047
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2046
    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 2019
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 2082
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;, "Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap<TK;TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
