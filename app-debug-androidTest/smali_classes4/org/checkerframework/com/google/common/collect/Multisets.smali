.class public final Lorg/checkerframework/com/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/Multisets$ViewMultiset;,
        Lorg/checkerframework/com/google/common/collect/Multisets$DecreasingCount;,
        Lorg/checkerframework/com/google/common/collect/Multisets$MultisetIteratorImpl;,
        Lorg/checkerframework/com/google/common/collect/Multisets$EntrySet;,
        Lorg/checkerframework/com/google/common/collect/Multisets$ElementSet;,
        Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;,
        Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;,
        Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;,
        Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 891
    .local p0, "self":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 894
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multisets;->addAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z

    move-result v0

    return v0

    .line 895
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    const/4 v0, 0x0

    return v0

    .line 898
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method private static addAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 904
    .local p0, "self":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "elements":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    const/4 v0, 0x0

    return v0

    .line 907
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V

    invoke-interface {p1, v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    .line 908
    const/4 v0, 0x1

    return v0
.end method

.method static cast(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TT;>;"
        }
    .end annotation

    .line 1128
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    return-object v0
.end method

.method public static containsOccurrences(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 682
    .local p0, "superMultiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    .local p1, "subMultiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 685
    .local v1, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 686
    .local v2, "superCount":I
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 687
    const/4 v0, 0x0

    return v0

    .line 689
    .end local v1    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "superCount":I
    :cond_0
    goto :goto_0

    .line 690
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static copyHighestCountFirst(Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1139
    .local p0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    check-cast v0, [Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 1140
    .local v0, "entries":[Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "[Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    sget-object v1, Lorg/checkerframework/com/google/common/collect/Multisets$DecreasingCount;->INSTANCE:Lorg/checkerframework/com/google/common/collect/Multisets$DecreasingCount;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1141
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static difference(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 614
    .local p0, "multiset1":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "multiset2":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$4;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$4;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static elementIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 962
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$5;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multisets$5;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static equalsImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 865
    .local p0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 866
    return v0

    .line 868
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 869
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 876
    .local v1, "that":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->size()I

    move-result v3

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 879
    :cond_1
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 880
    .local v4, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 881
    return v2

    .line 883
    .end local v4    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    :cond_2
    goto :goto_0

    .line 884
    :cond_3
    return v0

    .line 877
    :cond_4
    :goto_1
    return v2

    .line 886
    .end local v1    # "that":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    :cond_5
    return v2
.end method

.method public static filter(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 302
    .local p0, "unfiltered":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;

    if-eqz v0, :cond_0

    .line 305
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;

    .line 306
    .local v0, "filtered":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-static {v1, p1}, Lorg/checkerframework/com/google/common/base/Predicates;->and(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v1

    .line 307
    .local v1, "combinedPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<TE;>;"
    new-instance v2, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v2

    .line 309
    .end local v0    # "filtered":Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;, "Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    .end local v1    # "combinedPredicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<TE;>;"
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$FilteredMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 245
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static inferDistinctElements(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 388
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 389
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    .line 391
    :cond_0
    const/16 v0, 0xb

    return v0
.end method

.method public static intersection(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 480
    .local p0, "multiset1":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "multiset2":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$2;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static iteratorImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1053
    .local p0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/Multisets$MultisetIteratorImpl;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static synthetic lambda$spliteratorImpl$2(Lorg/checkerframework/com/google/common/collect/Multiset$Entry;)Ljava/util/Spliterator;
    .locals 2
    .param p0, "entry"    # Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 1110
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toMultiset$0(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 2
    .param p0, "elementFunction"    # Ljava/util/function/Function;
    .param p1, "countFunction"    # Ljava/util/function/ToIntFunction;
    .param p2, "ms"    # Lorg/checkerframework/com/google/common/collect/Multiset;
    .param p3, "t"    # Ljava/lang/Object;

    .line 85
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toMultiset$1(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 0
    .param p0, "ms1"    # Lorg/checkerframework/com/google/common/collect/Multiset;
    .param p1, "ms2"    # Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 87
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-object p0
.end method

.method static linearTimeSizeImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)I"
        }
    .end annotation

    .line 1119
    .local p0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    const-wide/16 v0, 0x0

    .line 1120
    .local v0, "size":J
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 1121
    .local v3, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1122
    .end local v3    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    goto :goto_0

    .line 1123
    :cond_0
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    return v2
.end method

.method static removeAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 913
    .local p0, "self":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 915
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 918
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public static removeOccurrences(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 763
    .local p0, "multisetToModify":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    .local p1, "occurrencesToRemove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 764
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multisets;->removeOccurrences(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z

    move-result v0

    return v0

    .line 766
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 770
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {p0, v2}, Lorg/checkerframework/com/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 771
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 772
    :cond_1
    return v0
.end method

.method public static removeOccurrences(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 801
    .local p0, "multisetToModify":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    .local p1, "occurrencesToRemove":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "changed":Z
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 806
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 807
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 808
    .local v2, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 809
    .local v3, "removeCount":I
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 810
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 811
    const/4 v0, 0x1

    goto :goto_1

    .line 812
    :cond_0
    if-lez v3, :cond_1

    .line 813
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Lorg/checkerframework/com/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    .line 814
    const/4 v0, 0x1

    .line 816
    .end local v2    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    .end local v3    # "removeCount":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 817
    :cond_2
    return v0
.end method

.method static retainAllImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 923
    .local p0, "self":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 926
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 929
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public static retainOccurrences(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 712
    .local p0, "multisetToModify":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    .local p1, "multisetToRetain":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets;->retainOccurrencesImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z

    move-result v0

    return v0
.end method

.method private static retainOccurrencesImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 718
    .local p0, "multisetToModify":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "occurrencesToRetain":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 722
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    const/4 v1, 0x0

    .line 723
    .local v1, "changed":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 725
    .local v2, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 726
    .local v3, "retainCount":I
    if-nez v3, :cond_0

    .line 727
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 728
    const/4 v1, 0x1

    goto :goto_1

    .line 729
    :cond_0
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 730
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Lorg/checkerframework/com/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 731
    const/4 v1, 0x1

    .line 733
    .end local v2    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    .end local v3    # "retainCount":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 734
    :cond_2
    return v1
.end method

.method static setCountImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;I)I
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;TE;I)I"
        }
    .end annotation

    .line 934
    .local p0, "self":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "count"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 936
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 938
    .local v0, "oldCount":I
    sub-int v1, p2, v0

    .line 939
    .local v1, "delta":I
    if-lez v1, :cond_0

    .line 940
    invoke-interface {p0, p1, v1}, Lorg/checkerframework/com/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_0

    .line 941
    :cond_0
    if-gez v1, :cond_1

    .line 942
    neg-int v2, v1

    invoke-interface {p0, p1, v2}, Lorg/checkerframework/com/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    .line 945
    :cond_1
    :goto_0
    return v0
.end method

.method static setCountImpl(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;TE;II)Z"
        }
    .end annotation

    .line 950
    .local p0, "self":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 951
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 953
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 954
    invoke-interface {p0, p1, p3}, Lorg/checkerframework/com/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 955
    const/4 v0, 0x1

    return v0

    .line 957
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static spliteratorImpl(Lorg/checkerframework/com/google/common/collect/Multiset;)Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;)",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1107
    .local p0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 1108
    .local v0, "entrySpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda0;-><init>()V

    .line 1112
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v2

    and-int/lit16 v2, v2, 0x510

    or-int/lit8 v2, v2, 0x40

    .line 1114
    invoke-interface {p0}, Lorg/checkerframework/com/google/common/collect/Multiset;->size()I

    move-result v3

    int-to-long v3, v3

    .line 1108
    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v1

    return-object v1
.end method

.method public static sum(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "+TE;>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 537
    .local p0, "multiset1":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    .local p1, "multiset2":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$3;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$3;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static toMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "M::",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;>(",
            "Ljava/util/function/Function<",
            "-TT;TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 80
    .local p0, "elementFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TE;>;"
    .local p1, "countFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    .local p2, "multisetSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/Multisets$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, v1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static union(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "+TE;>;",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 409
    .local p0, "multiset1":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    .local p1, "multiset2":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Multisets$1;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;Lorg/checkerframework/com/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    .local p0, "multiset":Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    return-object v0
.end method

.method public static unmodifiableMultiset(Lorg/checkerframework/com/google/common/collect/Multiset;)Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "+TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 103
    .local p0, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<+TE;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V

    return-object v0

    .line 105
    :cond_1
    :goto_0
    move-object v0, p0

    .line 106
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<TE;>;"
    return-object v0
.end method

.method public static unmodifiableSortedMultiset(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)Lorg/checkerframework/com/google/common/collect/SortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 233
    .local p0, "sortedMultiset":Lorg/checkerframework/com/google/common/collect/SortedMultiset;, "Lorg/checkerframework/com/google/common/collect/SortedMultiset<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;

    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/SortedMultiset;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)V

    return-object v0
.end method
