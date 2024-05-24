.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;",
        "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field private final queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
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
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;>;II)V"
        }
    .end annotation

    .line 2226
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;II)V

    .line 2220
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2227
    return-void
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    .line 2218
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2218
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
            "*>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 2242
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<TK;Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;*>;"
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    return-object v0
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .line 2236
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 2252
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2253
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 2247
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2248
    return-void
.end method

.method bridge synthetic self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2218
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 2231
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    return-object p0
.end method
