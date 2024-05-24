.class public final Lorg/checkerframework/com/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$EntrySet;,
        Lorg/checkerframework/com/google/common/collect/Maps$Values;,
        Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet;,
        Lorg/checkerframework/com/google/common/collect/Maps$SortedKeySet;,
        Lorg/checkerframework/com/google/common/collect/Maps$KeySet;,
        Lorg/checkerframework/com/google/common/collect/Maps$IteratorBasedAbstractMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$ViewCachingAbstractMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableNavigableMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$FilteredKeyMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$FilteredMapValues;,
        Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesNavigableMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesSortedMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;,
        Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;,
        Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;,
        Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableEntrySet;,
        Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableEntries;,
        Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;,
        Lorg/checkerframework/com/google/common/collect/Maps$SortedAsMapView;,
        Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;,
        Lorg/checkerframework/com/google/common/collect/Maps$SortedMapDifferenceImpl;,
        Lorg/checkerframework/com/google/common/collect/Maps$ValueDifferenceImpl;,
        Lorg/checkerframework/com/google/common/collect/Maps$MapDifferenceImpl;,
        Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;,
        Lorg/checkerframework/com/google/common/collect/Maps$EntryFunction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "x0"    # Ljava/util/SortedSet;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .param p0, "x0"    # Ljava/util/NavigableSet;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map$Entry;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static asConverter(Lorg/checkerframework/com/google/common/collect/BiMap;)Lorg/checkerframework/com/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TA;TB;>;)",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .line 1495
    .local p0, "bimap":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TA;TB;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;)V

    return-object v0
.end method

.method static asEntryToEntryFunction(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/base/Function;
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
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1998
    .local p0, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$13;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$13;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryToValueFunction(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Lorg/checkerframework/com/google/common/base/Function;
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
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;TV2;>;"
        }
    .end annotation

    .line 1968
    .local p0, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$11;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$11;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryTransformer(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;
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
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "TK;TV1;TV2;>;"
        }
    .end annotation

    .line 1945
    .local p0, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$9;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$9;-><init>(Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 805
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$AsMapView;-><init>(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 861
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableAsMapView;-><init>(Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 832
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$SortedAsMapView;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$SortedAsMapView;-><init>(Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method static asMapEntryIterator(Ljava/util/Set;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 957
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$3;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$3;-><init>(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method static asValueToValueFunction(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Function;
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
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;TV1;TV2;>;TK;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TV1;TV2;>;"
        }
    .end annotation

    .line 1956
    .local p0, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$10;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$10;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V

    return-object v0
.end method

.method static capacity(I)I
    .locals 2
    .param p0, "expectedSize"    # I

    .line 326
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 327
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 328
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 330
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 334
    int-to-float v0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 336
    :cond_1
    const v0, 0x7fffffff

    return v0
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3629
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 3630
    const/4 v0, 0x0

    return v0

    .line 3632
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3608
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3613
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/MapDifference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 511
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 512
    move-object v0, p0

    check-cast v0, Ljava/util/SortedMap;

    .line 513
    .local v0, "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->difference(Ljava/util/SortedMap;Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/SortedMapDifference;

    move-result-object v1

    return-object v1

    .line 515
    .end local v0    # "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Equivalence;->equals()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->difference(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Equivalence;)Lorg/checkerframework/com/google/common/collect/MapDifference;

    move-result-object v0

    return-object v0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Equivalence;)Lorg/checkerframework/com/google/common/collect/MapDifference;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 536
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<-TV;>;"
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 539
    .local v7, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v8, v0

    .line 540
    .local v8, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 541
    .local v9, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 542
    .local v10, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/checkerframework/com/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lorg/checkerframework/com/google/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 543
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$MapDifferenceImpl;

    invoke-direct {v0, v7, v8, v9, v10}, Lorg/checkerframework/com/google/common/collect/Maps$MapDifferenceImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public static difference(Ljava/util/SortedMap;Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/SortedMapDifference;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/SortedMapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 565
    .local p0, "left":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 568
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v8

    .line 569
    .local v8, "onlyOnLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v9

    .line 570
    .local v9, "onlyOnRight":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-interface {v9, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 571
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v10

    .line 572
    .local v10, "onBoth":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v11

    .line 573
    .local v11, "differences":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Lorg/checkerframework/com/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Equivalence;->equals()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lorg/checkerframework/com/google/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 574
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$SortedMapDifferenceImpl;

    invoke-direct {v1, v8, v9, v10, v11}, Lorg/checkerframework/com/google/common/collect/Maps$SortedMapDifferenceImpl;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method private static doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "-TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 585
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<-TV;>;"
    .local p3, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p4, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p6, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/checkerframework/com/google/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 586
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 587
    .local v2, "leftKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 588
    .local v3, "leftValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 589
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 590
    .local v4, "rightValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, v3, v4}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 591
    invoke-interface {p5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 593
    :cond_0
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/Maps$ValueDifferenceImpl;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/MapDifference$ValueDifference;

    move-result-object v5

    invoke-interface {p6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v4    # "rightValue":Ljava/lang/Object;, "TV;"
    :goto_1
    goto :goto_2

    .line 596
    :cond_1
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v2    # "leftKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "leftValue":Ljava/lang/Object;, "TV;"
    :goto_2
    goto :goto_0

    .line 599
    :cond_2
    return-void
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3655
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-ne p0, p1, :cond_0

    .line 3656
    const/4 v0, 0x1

    return v0

    .line 3657
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3658
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 3659
    .local v0, "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3661
    .end local v0    # "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static filterEntries(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2541
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;

    .line 2543
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    .line 2544
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2542
    :goto_0
    return-object v0
.end method

.method public static filterEntries(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2610
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2611
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    .line 2612
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    .line 2613
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2611
    :goto_0
    return-object v0
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2575
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2576
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2577
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2578
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2576
    :goto_0
    return-object v0
.end method

.method public static filterEntries(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2645
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2646
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;

    .line 2648
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2647
    :goto_0
    return-object v0
.end method

.method private static filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2658
    .local p0, "map":Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;, "Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 2659
    invoke-static {v2, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2658
    return-object v0
.end method

.method private static filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2679
    .local p0, "map":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    nop

    .line 2680
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;->access$500(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    .line 2681
    .local v0, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2668
    .local p0, "map":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    .line 2669
    .local v0, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2690
    .local p0, "map":Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;, "Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    .line 2691
    .local v0, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2288
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->keyPredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    .line 2290
    .local v0, "entryPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<Ljava/util/Map$Entry<TK;*>;>;"
    instance-of v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;

    .line 2291
    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterFiltered(Lorg/checkerframework/com/google/common/collect/Maps$AbstractFilteredMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$FilteredKeyMap;

    .line 2292
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$FilteredKeyMap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)V

    .line 2290
    :goto_0
    return-object v1
.end method

.method public static filterKeys(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2359
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->keyPredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2325
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->keyPredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2388
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2389
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->keyPredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterEntries(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2417
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterEntries(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2480
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2448
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2512
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->filterEntries(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static fromProperties(Ljava/util/Properties;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1355
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1357
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1359
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 1360
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1362
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1379
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immutableEnumMap(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 149
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap;

    if-eqz v0, :cond_0

    .line 151
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap;

    .line 152
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap<TK;TV;>;"
    return-object v0

    .line 154
    .end local v0    # "result":Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap<TK;TV;>;"
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    .local v0, "entryItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<TK;+TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    .line 158
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .local v1, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 160
    .local v2, "key1":Ljava/lang/Enum;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 161
    .local v3, "value1":Ljava/lang/Object;, "TV;"
    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v2}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 163
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v5, Ljava/util/EnumMap;

    invoke-direct {v5, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 164
    .local v5, "enumMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {v5, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 167
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Enum;

    .line 168
    .local v7, "key":Ljava/lang/Enum;, "TK;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 169
    .local v8, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v7, v8}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v5, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    .end local v7    # "key":Ljava/lang/Enum;, "TK;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 172
    :cond_2
    invoke-static {v5}, Lorg/checkerframework/com/google/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v6

    return-object v6
.end method

.method static indexMap(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4220
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 4221
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TE;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 4222
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4223
    .local v3, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 4224
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    move v1, v4

    goto :goto_0

    .line 4225
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method

.method static keyFunction()Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "TK;*>;TK;>;"
        }
    .end annotation

    .line 109
    sget-object v0, Lorg/checkerframework/com/google/common/collect/Maps$EntryFunction;->KEY:Lorg/checkerframework/com/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 118
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;*>;)TK;"
        }
    .end annotation

    .line 3739
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static keyPredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "TK;*>;>;"
        }
    .end annotation

    .line 2256
    .local p0, "keyPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TK;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->keyFunction()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Predicates;->compose(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "v1"    # Ljava/lang/Object;
    .param p1, "v2"    # Ljava/lang/Object;

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple values for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$toImmutableEnumMap$1()Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;
    .locals 2

    .line 227
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableEnumMap$2(Ljava/util/function/Function;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;Ljava/lang/Object;)V
    .locals 3
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "accum"    # Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;
    .param p3, "t"    # Ljava/lang/Object;

    .line 232
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Null key for input %s"

    invoke-static {v0, v1, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 233
    .local v0, "key":Ljava/lang/Enum;, "TK;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Null value for input %s"

    invoke-static {v1, v2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method static synthetic lambda$toImmutableEnumMap$3(Ljava/util/function/BinaryOperator;)Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;
    .locals 1
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;

    .line 261
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableEnumMap$4(Ljava/util/function/Function;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;Ljava/lang/Object;)V
    .locals 3
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "accum"    # Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;
    .param p3, "t"    # Ljava/lang/Object;

    .line 263
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Null key for input %s"

    invoke-static {v0, v1, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 264
    .local v0, "key":Ljava/lang/Enum;, "TK;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Null value for input %s"

    invoke-static {v1, v2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 265
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps$Accumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public static newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 461
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 477
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 303
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 368
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:TC;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TC;>;)",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 451
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 429
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 774
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-eqz p0, :cond_0

    .line 775
    return-object p0

    .line 777
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method static putAllImpl(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 3680
    .local p0, "self":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 3681
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3682
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 3683
    :cond_0
    return-void
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3647
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 3648
    const/4 v0, 0x0

    return v0

    .line 3650
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1160
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$6;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$6;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method private static removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1106
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$4;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$4;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1125
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$5;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$5;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3585
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3587
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3588
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3589
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3572
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3574
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3575
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3576
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3598
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3600
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3601
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3602
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static subMap(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/Range<",
            "TK;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4248
    .local p0, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "range":Lorg/checkerframework/com/google/common/collect/Range;, "Lorg/checkerframework/com/google/common/collect/Range<TK;>;"
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4249
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 4250
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4251
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4252
    nop

    .line 4253
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 4252
    :goto_0
    const-string v3, "map is using a custom comparator which is inconsistent with the natural ordering."

    invoke-static {v0, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4256
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4257
    nop

    .line 4258
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    .line 4259
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundType()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 4260
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    .line 4261
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->upperBoundType()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v5

    sget-object v6, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 4257
    :goto_2
    invoke-interface {p0, v0, v3, v4, v1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0

    .line 4262
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4263
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->lowerBoundType()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0

    .line 4264
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4265
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/Range;->upperBoundType()Lorg/checkerframework/com/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lorg/checkerframework/com/google/common/collect/BoundType;->CLOSED:Lorg/checkerframework/com/google/common/collect/BoundType;

    if-ne v3, v4, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0

    .line 4267
    :cond_8
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public static synchronizedBiMap(Lorg/checkerframework/com/google/common/collect/BiMap;)Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1574
    .local p0, "bimap":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized;->biMap(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3473
    .local p0, "navigableMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 223
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda4;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    const/4 v5, 0x0

    sget-object v6, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 256
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/checkerframework/com/google/common/collect/Maps$$ExternalSyntheticLambda4;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1233
    .local p0, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    .local p1, "valueFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->toMap(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1251
    .local p0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .local p1, "valueFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TK;TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1254
    .local v0, "builder":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1256
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 1258
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3666
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3667
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 3668
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3669
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-nez v1, :cond_0

    .line 3670
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3672
    :cond_0
    const/4 v1, 0x0

    .line 3673
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3674
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_0

    .line 3675
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static transformEntries(Ljava/util/Map;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/Map<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1805
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;
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
            "Ljava/util/NavigableMap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1911
    .local p0, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesNavigableMap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
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
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1857
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesSortedMap;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static transformEntry(Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1980
    .local p0, "transformer":Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;, "Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$12;

    invoke-direct {v0, p1, p0}, Lorg/checkerframework/com/google/common/collect/Maps$12;-><init>(Ljava/util/Map$Entry;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/Map<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1668
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->asEntryTransformer(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/NavigableMap;
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
            "Ljava/util/NavigableMap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1753
    .local p0, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->asEntryTransformer(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/SortedMap;
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
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1709
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->asEntryTransformer(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lorg/checkerframework/com/google/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1293
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "keyFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV;TK;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->uniqueIndex(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 5
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
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1328
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "keyFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1330
    .local v0, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1332
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 1333
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 1335
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1336
    :catch_0
    move-exception v1

    .line 1337
    .local v1, "duplicateKeys":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". To index multiple values under a key, use Multimaps.index."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static unmodifiableBiMap(Lorg/checkerframework/com/google/common/collect/BiMap;)Lorg/checkerframework/com/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1589
    .local p0, "bimap":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<+TK;+TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableBiMap;-><init>(Lorg/checkerframework/com/google/common/collect/BiMap;Lorg/checkerframework/com/google/common/collect/BiMap;)V

    return-object v0
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1404
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$7;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$7;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntryIterator(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1420
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$8;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$8;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1391
    .local p0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableEntrySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 602
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 603
    move-object v0, p0

    check-cast v0, Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 605
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3268
    .local p0, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;+TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3269
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableNavigableMap;

    if-eqz v0, :cond_0

    .line 3271
    move-object v0, p0

    .line 3272
    .local v0, "result":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    return-object v0

    .line 3274
    .end local v0    # "result":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method private static unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;+TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3280
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static valueFunction()Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/util/Map$Entry<",
            "*TV;>;TV;>;"
        }
    .end annotation

    .line 114
    sget-object v0, Lorg/checkerframework/com/google/common/collect/Maps$EntryFunction;->VALUE:Lorg/checkerframework/com/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 127
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$2;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "*TV;>;)TV;"
        }
    .end annotation

    .line 3743
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static valuePredicateOnEntries(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "*TV;>;>;"
        }
    .end annotation

    .line 2260
    .local p0, "valuePredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->valueFunction()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Predicates;->compose(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method
