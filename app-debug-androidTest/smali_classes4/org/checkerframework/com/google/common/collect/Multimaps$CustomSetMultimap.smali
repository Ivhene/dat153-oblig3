.class Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;
.super Lorg/checkerframework/com/google/common/collect/AbstractSetMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 413
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p2, "factory":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<+Ljava/util/Set<TV;>;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 414
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 415
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 465
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 466
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 467
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 468
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->setMap(Ljava/util/Map;)V

    .line 469
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 458
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 459
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 460
    return-void
.end method


# virtual methods
.method createAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->createMaybeNavigableAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 409
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->factory:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;->createMaybeNavigableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v0, p1, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    .line 435
    move-object v0, p1

    check-cast v0, Ljava/util/NavigableSet;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    .line 436
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 437
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Multimaps$CustomSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v0, p2, Ljava/util/NavigableSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;

    move-object v2, p2

    check-cast v2, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/NavigableSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .line 447
    :cond_0
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 448
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    move-object v2, p2

    check-cast v2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .line 450
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method
