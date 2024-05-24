.class abstract Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;
.super Lorg/checkerframework/com/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient navigableKeySet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4026
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method

.method private static reverse(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 4054
    .local p0, "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/Ordering;->reverse()Lorg/checkerframework/com/google/common/collect/Ordering;

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

    .line 4089
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

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

    .line 4094
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 4041
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    .line 4042
    .local v0, "result":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_1

    .line 4043
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 4044
    .local v1, "forwardCmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v1, :cond_0

    .line 4045
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v1

    .line 4047
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->reverse(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    move-object v0, v2

    .line 4049
    .end local v1    # "forwardCmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_1
    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4155
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap$1EntrySetImpl;-><init>(Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;)V

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 4025
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4033
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4173
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4129
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4136
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    .line 4137
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->createEntrySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4109
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4059
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

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

    .line 4079
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

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

    .line 4084
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract forward()Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4189
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4194
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

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

    .line 4099
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

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

    .line 4104
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 4160
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4114
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4064
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

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

    .line 4069
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

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

    .line 4074
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4167
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    .line 4168
    .local v0, "result":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4119
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4124
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4179
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4184
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4199
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4204
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4214
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;->standardToString()Ljava/lang/String;

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

    .line 4209
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap;, "Lorg/checkerframework/com/google/common/collect/Maps$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
