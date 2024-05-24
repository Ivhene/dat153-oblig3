.class public final Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 250
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    .line 251
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
    .locals 1

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 355
    .local v0, "mapEntries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->onKeys()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 358
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method bridge synthetic combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 318
    return-object p0
.end method

.method newMutableValueCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Platform;->preservesInsertionOrderOnAddsSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 330
    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 348
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 263
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 275
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 288
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 295
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 309
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$Builder;

    .line 310
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    goto :goto_0

    .line 311
    :cond_0
    return-object p0
.end method
