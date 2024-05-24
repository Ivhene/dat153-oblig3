.class abstract Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
.super Lorg/checkerframework/com/google/common/collect/AbstractMultimap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$Itr;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedSet;,
        Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient totalSize:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;-><init>()V

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 119
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 87
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 87
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$202(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;I)I
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
    .param p1, "x1"    # I

    .line 87
    iput p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return p1
.end method

.method static synthetic access$208(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 87
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$210(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 87
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->removeValuesForKey(Ljava/lang/Object;)V

    return-void
.end method

.method private getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 205
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    return-object v0
.end method

.method private static iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 581
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 582
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0

    .line 583
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 581
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$entrySpliterator$1(Ljava/util/Map$Entry;)Ljava/util/Spliterator;
    .locals 4
    .param p0, "keyToValueCollectionEntry"    # Ljava/util/Map$Entry;

    .line 1253
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1255
    .local v1, "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    nop

    .line 1256
    invoke-interface {v1}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 1255
    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$forEach$3(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .param p0, "action"    # Ljava/util/function/BiConsumer;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "valueCollection"    # Ljava/util/Collection;

    .line 1266
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$null$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1256
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "action"    # Ljava/util/function/BiConsumer;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1266
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private removeValuesForKey(Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1114
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1116
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .line 1117
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1118
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1119
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 1121
    .end local v1    # "count":I
    :cond_0
    return-void
.end method


# virtual methods
.method backingMap()Ljava/util/Map;
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

    .line 166
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 271
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 272
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 273
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 276
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 178
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1271
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method abstract createCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1223
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1224
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap$EntrySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMultimap;)V

    return-object v0

    .line 1226
    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap$Entries;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 898
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method createKeys()Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 1204
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V

    return-object v0
.end method

.method final createMaybeNavigableAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1275
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 1276
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0

    .line 1277
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 1278
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0

    .line 1280
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method final createMaybeNavigableKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 902
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 903
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/NavigableMap;)V

    return-object v0

    .line 904
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 905
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0

    .line 907
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method createUnmodifiableEmptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1177
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMultimap$Values;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap$Values;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1218
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1240
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$2;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)V

    return-object v0
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1250
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 1251
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda3;-><init>()V

    .line 1259
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->size()I

    move-result v2

    int-to-long v2, v2

    .line 1250
    const/16 v4, 0x40

    invoke-static {v0, v1, v4, v2, v3}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

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

    .line 1264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1267
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 288
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 291
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 186
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 188
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 190
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return v1

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "New Collection violated the Collection spec"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 195
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 197
    return v1

    .line 199
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 252
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createUnmodifiableEmptyCollection()Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v1

    .line 257
    .local v1, "output":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 259
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 261
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 228
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v2

    .line 229
    .local v2, "oldValues":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget v3, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 232
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 234
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iget v3, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method final setMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 126
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 127
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 128
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 129
    .end local v1    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 173
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
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

    .line 265
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1182
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$1;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;)V

    return-object v0
.end method

.method valueSpliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 1192
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 1193
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;->size()I

    move-result v2

    int-to-long v2, v2

    .line 1192
    const/16 v4, 0x40

    invoke-static {v0, v1, v4, v2, v3}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1172
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method

.method final wrapList(Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 303
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p3, "ancestor":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    :goto_0
    return-object v0
.end method
