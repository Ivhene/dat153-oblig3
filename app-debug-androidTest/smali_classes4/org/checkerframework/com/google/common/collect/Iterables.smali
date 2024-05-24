.class public final Lorg/checkerframework/com/google/common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/Iterables$UnmodifiableIterable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 316
    .local p0, "addTo":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "elementsToAdd":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 317
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 318
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 320
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public static all(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 618
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->all(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static any(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 608
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->any(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method private static castOrCopyToCollection(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 304
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    goto :goto_0

    .line 306
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 488
    .local p0, "inputs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 418
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 434
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 454
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p3, "d":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 472
    .local p0, "inputs":[Ljava/lang/Iterable;, "[Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;->concat([Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public static consumingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 954
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$8;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Iterables$8;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 136
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 137
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 138
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 140
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 362
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Iterables$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs cycle([Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 403
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static elementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 223
    .local p0, "iterable1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "iterable2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 225
    .local v0, "collection1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 226
    .local v1, "collection2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 227
    const/4 v2, 0x0

    return v2

    .line 230
    .end local v0    # "collection1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "collection2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public static filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 597
    .local p0, "unfiltered":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "desiredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lorg/checkerframework/com/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static filter(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 554
    .local p0, "unfiltered":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "retainIfTrue":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$4;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables$4;-><init>(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static find(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 631
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->find(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static find(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;TT;)TT;"
        }
    .end annotation

    .line 646
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Iterators;->find(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static frequency(Ljava/lang/Iterable;Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 335
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 336
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 337
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 338
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 340
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->frequency(Ljava/util/Iterator;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 726
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 728
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v0

    .line 727
    :goto_0
    return-object v0
.end method

.method public static get(Ljava/lang/Iterable;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;ITT;)TT;"
        }
    .end annotation

    .line 749
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->checkNonnegative(I)V

    .line 751
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 752
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Lists;->cast(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 753
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1

    .line 755
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 756
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->advance(Ljava/util/Iterator;I)I

    .line 757
    invoke-static {v0, p2}, Lorg/checkerframework/com/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 779
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLast(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 793
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 794
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 795
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 798
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterables;->getLastInNonemptyList(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 796
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 801
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->getLast(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 816
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 817
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 818
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    return-object p1

    .line 820
    :cond_0
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 821
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Lists;->cast(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Iterables;->getLastInNonemptyList(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 825
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->getLast(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getLastInNonemptyList(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 829
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 254
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 268
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)I"
        }
    .end annotation

    .line 675
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->indexOf(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)I

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 985
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 986
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 988
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 2
    .param p1, "limitSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 922
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "limit is negative"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 924
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$7;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables$7;-><init>(Ljava/lang/Iterable;I)V

    return-object v0
.end method

.method public static mergeSorted(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1007
    .local p0, "iterables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const-string v0, "iterables"

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    const-string v0, "comparator"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$9;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables$9;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    .line 1017
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Iterables$UnmodifiableIterable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/google/common/collect/Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/collect/Iterables$1;)V

    return-object v1
.end method

.method public static paddedPartition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 536
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 538
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$3;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables$3;-><init>(Ljava/lang/Iterable;I)V

    return-object v0
.end method

.method public static partition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 510
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 512
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables$2;-><init>(Ljava/lang/Iterable;I)V

    return-object v0
.end method

.method public static removeAll(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 155
    .local p0, "removeFrom":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 156
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    .line 155
    :goto_0
    return v0
.end method

.method static removeFirstMatching(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 204
    .local p0, "removeFrom":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 210
    return-object v1

    .line 212
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 213
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static removeIf(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 195
    .local p0, "removeFrom":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 196
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    .line 198
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static retainAll(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 172
    .local p0, "removeFrom":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 173
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    .line 172
    :goto_0
    return v0
.end method

.method public static size(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 124
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 125
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    .line 126
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    .line 124
    :goto_0
    return v0
.end method

.method public static skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 2
    .param p1, "numberToSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 852
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "number to skip cannot be negative"

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 855
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$6;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables$6;-><init>(Ljava/lang/Iterable;I)V

    return-object v0
.end method

.method static toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 295
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Iterables;->castOrCopyToCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 280
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 284
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Iterables;->castOrCopyToCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 285
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static toIterator()Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;>;"
        }
    .end annotation

    .line 1023
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$10;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/Iterables$10;-><init>()V

    return-object v0
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 241
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Function;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TF;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TF;+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 693
    .local p0, "fromIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TF;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TF;+TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$5;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/Iterables$5;-><init>(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method public static tryFind(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "-TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 661
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Iterators;->tryFind(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 72
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/Iterables$UnmodifiableIterable;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableCollection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Iterables$UnmodifiableIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;Lorg/checkerframework/com/google/common/collect/Iterables$1;)V

    return-object v0

    .line 75
    :cond_1
    :goto_0
    move-object v0, p0

    .line 76
    .local v0, "result":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object v0
.end method

.method public static unmodifiableIterable(Lorg/checkerframework/com/google/common/collect/ImmutableCollection;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<",
            "TE;>;)",
            "Ljava/lang/Iterable<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    .local p0, "iterable":Lorg/checkerframework/com/google/common/collect/ImmutableCollection;, "Lorg/checkerframework/com/google/common/collect/ImmutableCollection<TE;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
