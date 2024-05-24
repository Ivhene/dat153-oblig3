.class public final Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$SerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMapFauxverideShim<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 112
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 114
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 116
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    sput-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 114
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    .line 563
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "keySet":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, "valueList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)V

    .line 564
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 569
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "keySet":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, "valueList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TV;>;"
    .local p3, "descendingMap":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 570
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 571
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 572
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->descendingMap:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 573
    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 1
    .param p0, "x0"    # Ljava/util/Comparator;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 61
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 1
    .param p0, "x0"    # Ljava/util/Comparator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [Ljava/util/Map$Entry;
    .param p3, "x3"    # I

    .line 61
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 257
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Ordering;

    .line 258
    .local v0, "naturalOrder":Lorg/checkerframework/com/google/common/collect/Ordering;, "Lorg/checkerframework/com/google/common/collect/Ordering<TK;>;"
    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 273
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 220
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Ordering;

    .line 221
    .local v0, "naturalOrder":Lorg/checkerframework/com/google/common/collect/Ordering;, "Lorg/checkerframework/com/google/common/collect/Ordering<TK;>;"
    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 237
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 308
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 309
    .local v0, "sameComparator":Z
    instance-of v1, p0, Ljava/util/SortedMap;

    if-eqz v1, :cond_2

    .line 310
    move-object v1, p0

    check-cast v1, Ljava/util/SortedMap;

    .line 311
    .local v1, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 312
    .local v2, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    if-nez v2, :cond_1

    sget-object v3, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .line 316
    .end local v1    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    .end local v2    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_2
    if-eqz v0, :cond_3

    instance-of v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    if-eqz v1, :cond_3

    .line 320
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 321
    .local v1, "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_3

    .line 322
    return-object v1

    .line 325
    .end local v1    # "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 288
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 289
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 294
    :cond_0
    instance-of v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    if-eqz v1, :cond_1

    .line 298
    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 299
    .local v1, "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    return-object v1

    .line 303
    .end local v1    # "kvMap":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :cond_1
    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method static emptyMap(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 123
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 122
    return-object v0
.end method

.method private static fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p1, "sameComparator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 340
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    .line 341
    .local v0, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v1, v0

    invoke-static {p0, p1, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method private static fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 11
    .param p1, "sameComparator"    # Z
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;I)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 349
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    .line 356
    new-array v1, p3, [Ljava/lang/Object;

    .line 357
    .local v1, "keys":[Ljava/lang/Object;
    new-array v2, p3, [Ljava/lang/Object;

    .line 358
    .local v2, "values":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    goto :goto_0

    .line 353
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/Object;
    .end local v2    # "values":[Ljava/lang/Object;
    :pswitch_0
    aget-object v1, p2, v0

    .line 354
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p2, v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 353
    invoke-static {p0, v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 351
    :pswitch_1
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 360
    .restart local v0    # "i":I
    .restart local v1    # "keys":[Ljava/lang/Object;
    .restart local v2    # "values":[Ljava/lang/Object;
    :goto_0
    if-ge v0, p3, :cond_0

    .line 361
    aget-object v3, p2, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 362
    .local v3, "key":Ljava/lang/Object;
    aget-object v4, p2, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 363
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    aput-object v3, v1, v0

    .line 365
    aput-object v4, v2, v0

    .line 360
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_3

    .line 371
    :cond_1
    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p2, v0, p3, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 381
    aget-object v3, p2, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 382
    .local v3, "prevKey":Ljava/lang/Object;, "TK;"
    aput-object v3, v1, v0

    .line 383
    aget-object v4, p2, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 384
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 386
    aget-object v5, p2, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 387
    .local v5, "key":Ljava/lang/Object;, "TK;"
    aget-object v6, p2, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 388
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v5, v6}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    aput-object v5, v1, v4

    .line 390
    aput-object v6, v2, v4

    .line 391
    nop

    .line 392
    invoke-interface {p0, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v0

    :goto_2
    add-int/lit8 v8, v4, -0x1

    aget-object v8, p2, v8

    aget-object v9, p2, v4

    .line 391
    const-string v10, "key"

    invoke-static {v7, v10, v8, v9}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 393
    move-object v3, v5

    .line 385
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 396
    .end local v3    # "prevKey":Ljava/lang/Object;, "TK;"
    .end local v4    # "i":I
    :cond_3
    :goto_3
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    new-instance v3, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    new-instance v4, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;

    invoke-direct {v4, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {v3, v4, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    new-instance v4, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;

    invoke-direct {v4, v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v3, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSubMap(II)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 700
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 701
    return-object p0

    .line 702
    :cond_0
    if-ne p1, p2, :cond_1

    .line 703
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 705
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 706
    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->subList(II)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 705
    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMap$0(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 104
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static naturalOrder()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 407
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 132
    sget-object v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 137
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 156
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 168
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 180
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 192
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Comparable;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 193
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p6, p7}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p8, p9}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 192
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 143
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 144
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;)V

    .line 142
    return-object v0
.end method

.method private static varargs ofEntries([Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 198
    .local p0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 419
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 427
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 79
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/CollectCollectors;->toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 98
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p3, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    .line 103
    invoke-static {p1, p2, p3, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$$ExternalSyntheticLambda1;-><init>()V

    .line 102
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 833
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 838
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 686
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 651
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$1EntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)V

    :goto_0
    return-object v0
.end method

.method createKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 662
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createValues()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 676
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->descendingKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 911
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->descendingMap()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 891
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->descendingMap:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    .line 892
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-nez v0, :cond_1

    .line 893
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    move-object v0, v1

    return-object v1

    .line 896
    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 898
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->reverse()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)V

    move-object v0, v1

    .line 896
    return-object v1

    .line 901
    :cond_1
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 603
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 853
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 691
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 823
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 828
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 582
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    .line 584
    .local v0, "keyList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<TK;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 585
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 591
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 592
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 721
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 737
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->getSubMap(II)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 843
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 848
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 597
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 858
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 696
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 813
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 818
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->navigableKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 906
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 871
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 577
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 752
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 771
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    nop

    .line 774
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 773
    :goto_0
    const-string v1, "expected fromKey <= toKey but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p0, p3, p4}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 792
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->keySet:Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->getSubMap(II)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 671
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->valueList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 939
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
