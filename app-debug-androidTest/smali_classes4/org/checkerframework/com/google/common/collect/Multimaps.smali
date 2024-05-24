.class public final Lorg/checkerframework/com/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$Entries;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$TransformedEntriesListMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$TransformedEntriesMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSetMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSortedSetMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$CustomListMultimap;,
        Lorg/checkerframework/com/google/common/collect/Multimaps$CustomMultimap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 72
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps;->unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 72
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps;->unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/checkerframework/com/google/common/collect/ListMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1030
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/ListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/checkerframework/com/google/common/collect/Multimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1067
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/checkerframework/com/google/common/collect/SetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .line 1043
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation

    .line 1056
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static equalsImpl(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 2186
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<**>;"
    if-ne p1, p0, :cond_0

    .line 2187
    const/4 v0, 0x1

    return v0

    .line 2189
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 2190
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multimap;

    .line 2191
    .local v0, "that":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<**>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2193
    .end local v0    # "that":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<**>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static filterEntries(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2117
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 2119
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterEntries(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0

    .line 2121
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    .line 2122
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/FilteredMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;

    .line 2123
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multimap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2121
    :goto_0
    return-object v0
.end method

.method public static filterEntries(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2153
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;

    .line 2155
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;

    .line 2156
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2154
    :goto_0
    return-object v0
.end method

.method private static filterFiltered(Lorg/checkerframework/com/google/common/collect/FilteredMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2167
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/FilteredMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    nop

    .line 2168
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->entryPredicate()Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    .line 2169
    .local v0, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/google/common/collect/FilteredEntryMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2180
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    nop

    .line 2181
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;->entryPredicate()Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    .line 2182
    .local v0, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/google/common/collect/FilteredEntrySetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2017
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;

    if-eqz v0, :cond_0

    .line 2018
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;

    .line 2019
    .local v0, "prev":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;

    .line 2020
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v2

    iget-object v3, v0, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;->keyPredicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v3, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2019
    return-object v1

    .line 2022
    .end local v0    # "prev":Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeyListMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1931
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1932
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterKeys(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0

    .line 1933
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ListMultimap;

    if-eqz v0, :cond_1

    .line 1934
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ListMultimap;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterKeys(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0

    .line 1935
    :cond_1
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;

    if-eqz v0, :cond_2

    .line 1936
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;

    .line 1937
    .local v0, "prev":Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multimap;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 1938
    invoke-static {v3, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 1937
    return-object v1

    .line 1939
    .end local v0    # "prev":Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    :cond_2
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    if-eqz v0, :cond_3

    .line 1940
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredMultimap;

    .line 1941
    .local v0, "prev":Lorg/checkerframework/com/google/common/collect/FilteredMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->keyPredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/FilteredMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    return-object v1

    .line 1943
    .end local v0    # "prev":Lorg/checkerframework/com/google/common/collect/FilteredMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredMultimap<TK;TV;>;"
    :cond_3
    new-instance v0, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeyMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1976
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;

    if-eqz v0, :cond_0

    .line 1977
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;

    .line 1978
    .local v0, "prev":Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;

    .line 1979
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;->unfiltered()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v2

    iget-object v3, v0, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;->keyPredicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v3, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 1978
    return-object v1

    .line 1980
    .end local v0    # "prev":Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    :cond_0
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;

    if-eqz v0, :cond_1

    .line 1981
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;

    .line 1982
    .local v0, "prev":Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->keyPredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v1

    return-object v1

    .line 1984
    .end local v0    # "prev":Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap;, "Lorg/checkerframework/com/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/FilteredKeySetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterValues(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2055
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterEntries(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2087
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multimaps;->filterEntries(Lorg/checkerframework/com/google/common/collect/SetMultimap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 162
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TV;>;>;"
    .local p2, "multimapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, v1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1086
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static index(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV;TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1627
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "keyFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV;TK;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps;->index(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static index(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV;TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1668
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "keyFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1670
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1671
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1672
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    invoke-interface {p1, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    .line 1674
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 1675
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static invertFrom(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;>(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    .line 575
    .local p0, "source":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TV;+TK;>;"
    .local p1, "dest":Lorg/checkerframework/com/google/common/collect/Multimap;, "TM;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 577
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/checkerframework/com/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 578
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    goto :goto_0

    .line 579
    :cond_0
    return-object p1
.end method

.method static synthetic lambda$flatteningToMultimap$2(Ljava/util/function/Function;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 4
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "multimap"    # Lorg/checkerframework/com/google/common/collect/Multimap;
    .param p3, "input"    # Ljava/lang/Object;

    .line 168
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p2, v0}, Lorg/checkerframework/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 170
    .local v1, "valuesForKey":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda4;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 171
    return-void
.end method

.method static synthetic lambda$flatteningToMultimap$3(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 0
    .param p0, "multimap1"    # Lorg/checkerframework/com/google/common/collect/Multimap;
    .param p1, "multimap2"    # Lorg/checkerframework/com/google/common/collect/Multimap;

    .line 173
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    .line 174
    return-object p0
.end method

.method static synthetic lambda$toMultimap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "multimap"    # Lorg/checkerframework/com/google/common/collect/Multimap;
    .param p3, "input"    # Ljava/lang/Object;

    .line 117
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$toMultimap$1(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 0
    .param p0, "multimap1"    # Lorg/checkerframework/com/google/common/collect/Multimap;
    .param p1, "multimap2"    # Lorg/checkerframework/com/google/common/collect/Multimap;

    .line 119
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    .line 120
    return-object p0
.end method

.method public static newListMultimap(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 328
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<+Ljava/util/List<TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newMultimap(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 216
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<+Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomMultimap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 406
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<+Ljava/util/Set<TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSortedSetMultimap(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 506
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<+Ljava/util/SortedSet<TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSortedSetMultimap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static synchronizedListMultimap(Lorg/checkerframework/com/google/common/collect/ListMultimap;)Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 952
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized;->listMultimap(Lorg/checkerframework/com/google/common/collect/ListMultimap;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedMultimap(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 615
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized;->multimap(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSetMultimap(Lorg/checkerframework/com/google/common/collect/SetMultimap;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 875
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized;->setMultimap(Lorg/checkerframework/com/google/common/collect/SetMultimap;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedSetMultimap(Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;)Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 921
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized;->sortedSetMultimap(Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static toMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 112
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p2, "multimapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/Multimaps$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, v1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static transformEntries(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1440
    .local p0, "fromMap":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV1;>;"
    .local p1, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$TransformedEntriesListMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1387
    .local p0, "fromMap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV1;>;"
    .local p1, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multimaps$TransformedEntriesMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1329
    .local p0, "fromMultimap":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV1;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->asEntryTransformer(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1331
    .local v0, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multimaps;->transformEntries(Lorg/checkerframework/com/google/common/collect/ListMultimap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static transformValues(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1282
    .local p0, "fromMultimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV1;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->asEntryTransformer(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1284
    .local v0, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multimaps;->transformEntries(Lorg/checkerframework/com/google/common/collect/Multimap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    return-object v1
.end method

.method private static unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1014
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1015
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableEntries;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;)Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 982
    .local p0, "delegate":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lorg/checkerframework/com/google/common/collect/ListMultimap;)Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 967
    .local p0, "delegate":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 970
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableListMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/ListMultimap;)V

    return-object v0

    .line 968
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableMultimap(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 644
    .local p0, "delegate":Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multimap;

    return-object v0
.end method

.method public static unmodifiableMultimap(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 630
    .local p0, "delegate":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V

    return-object v0

    .line 631
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 905
    .local p0, "delegate":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    return-object v0
.end method

.method public static unmodifiableSetMultimap(Lorg/checkerframework/com/google/common/collect/SetMultimap;)Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 890
    .local p0, "delegate":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSetMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 893
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSetMultimap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/SetMultimap;)V

    return-object v0

    .line 891
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSortedSetMultimap(Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;)Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 937
    .local p0, "delegate":Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/SortedSetMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    if-eqz v0, :cond_0

    .line 938
    return-object p0

    .line 940
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/SortedSetMultimap;)V

    return-object v0
.end method

.method private static unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 994
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 995
    move-object v0, p0

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0

    .line 996
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 997
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 998
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 999
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1001
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
