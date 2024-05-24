.class public abstract Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultisetFauxverideShim;
.source "ImmutableSortedMultiset.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;,
        Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultisetFauxverideShim<",
        "TE;>;",
        "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field transient descendingMultiset:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 320
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultisetFauxverideShim;-><init>()V

    return-void
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 209
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    .line 210
    .local v0, "naturalOrder":Lorg/checkerframework/com/google/common/collect/Ordering;, "Lorg/checkerframework/com/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 255
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    if-eqz v0, :cond_1

    .line 257
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    .line 258
    .local v0, "multiset":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->isPartialView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->entrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    return-object v1

    .line 262
    :cond_0
    return-object v0

    .line 266
    .end local v0    # "multiset":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 267
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 268
    .local v0, "sortedCopy":Lorg/checkerframework/com/google/common/collect/TreeMultiset;, "Lorg/checkerframework/com/google/common/collect/TreeMultiset<TE;>;"
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 269
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 239
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 227
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    .line 228
    .local v0, "naturalOrder":Lorg/checkerframework/com/google/common/collect/Ordering;, "Lorg/checkerframework/com/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>([TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 181
    .local p0, "elements":[Ljava/lang/Comparable;, "[TE;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfSorted(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 287
    .local p0, "sortedMultiset":Lorg/checkerframework/com/google/common/collect/SortedMultiset;, "Lorg/checkerframework/com/google/common/collect/SortedMultiset<TE;>;"
    nop

    .line 288
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 293
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    .line 296
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 297
    .local v0, "elementsBuilder":Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    .line 298
    .local v1, "cumulativeCounts":[J
    const/4 v2, 0x0

    .line 299
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 300
    .local v4, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;

    .line 301
    add-int/lit8 v5, v2, 0x1

    aget-wide v6, v1, v2

    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v1, v5

    .line 302
    nop

    .end local v4    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    add-int/lit8 v2, v2, 0x1

    .line 303
    goto :goto_0

    .line 304
    :cond_1
    new-instance v3, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;

    new-instance v4, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 305
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 308
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v1, v6, v5}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;[JII)V

    .line 304
    return-object v3
.end method

.method static emptyMultiset(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 313
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    return-object v0

    .line 316
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMultiset$0(Ljava/lang/Object;)I
    .locals 1
    .param p0, "e"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$toImmutableSortedMultiset$1(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 88
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/TreeMultiset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMultiset$2(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 2
    .param p0, "elementFunction"    # Ljava/util/function/Function;
    .param p1, "countFunction"    # Ljava/util/function/ToIntFunction;
    .param p2, "multiset"    # Lorg/checkerframework/com/google/common/collect/Multiset;
    .param p3, "t"    # Ljava/lang/Object;

    .line 90
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMultiset$3(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 0
    .param p0, "multiset1"    # Lorg/checkerframework/com/google/common/collect/Multiset;
    .param p1, "multiset2"    # Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 92
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    .line 93
    return-object p0
.end method

.method static synthetic lambda$toImmutableSortedMultiset$4(Ljava/util/Comparator;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;
    .param p1, "multiset"    # Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 95
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOfSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static naturalOrder()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 426
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 101
    sget-object v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 106
    .local p0, "element":Ljava/lang/Comparable;, "TE;"
    nop

    .line 107
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->of(Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;

    .line 108
    .local v0, "elementSet":Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    .line 109
    .local v1, "cumulativeCounts":[J
    new-instance v2, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/RegularImmutableSortedSet;[JII)V

    return-object v2

    nop

    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 120
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 131
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 143
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 155
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 167
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    .local p5, "e6":Ljava/lang/Comparable;, "TE;"
    .local p6, "remaining":[Ljava/lang/Comparable;, "[TE;"
    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    .line 168
    .local v0, "size":I
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 169
    .local v2, "all":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v3, 0x2

    aput-object p2, v1, v3

    const/4 v3, 0x3

    aput-object p3, v1, v3

    const/4 v3, 0x4

    aput-object p4, v1, v3

    const/4 v3, 0x5

    aput-object p5, v1, v3

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 170
    invoke-static {v2, p6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 400
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 412
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static toImmutableSortedMultiset(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 66
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->toImmutableSortedMultiset(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableSortedMultiset(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/function/Function<",
            "-TT;+TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 84
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elementFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TE;>;"
    .local p2, "countFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda1;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$$ExternalSyntheticLambda4;-><init>(Ljava/util/Comparator;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->descendingMultiset:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    .line 335
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    if-nez v0, :cond_1

    .line 336
    nop

    .line 337
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/DescendingImmutableSortedMultiset;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/DescendingImmutableSortedMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;)V

    :goto_0
    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->descendingMultiset:Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    .line 336
    return-object v1

    .line 341
    :cond_1
    return-object v0
.end method

.method public bridge synthetic descendingMultiset()Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract elementSet()Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 0

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirstEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .param p2, "lowerBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lorg/checkerframework/com/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            "TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    nop

    .line 381
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    :goto_0
    const-string v1, "Expected lowerBound <= upperBound but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 0

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->subMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/checkerframework/com/google/common/collect/BoundType;",
            ")",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 0

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/BoundType;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;-><init>(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)V

    return-object v0
.end method
