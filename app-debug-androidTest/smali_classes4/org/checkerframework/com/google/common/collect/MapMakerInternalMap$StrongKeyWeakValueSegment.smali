.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2028
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V

    .line 2021
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    .line 2029
    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2019
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2019
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2044
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    return-object v0
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 2038
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public getWeakValueReferenceForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2050
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->getValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 2079
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2080
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 2074
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2075
    return-void
.end method

.method public newWeakValueReferenceForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2056
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method bridge synthetic self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2019
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2033
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    return-object p0
.end method

.method public setWeakValueReferenceForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 2063
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "valueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    .line 2065
    .local v0, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    move-object v1, p2

    .line 2067
    .local v1, "newValueReference":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$600(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v2

    .line 2068
    .local v2, "previous":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$602(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 2069
    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 2070
    return-void
.end method
