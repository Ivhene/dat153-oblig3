.class abstract Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentSegment:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field nextExternal:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    .line 2512
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2513
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    .line 2514
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2515
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 2516
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .line 2522
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2524
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2525
    return-void

    .line 2528
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2529
    return-void

    .line 2532
    :cond_1
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_2

    .line 2533
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    .line 2534
    iget v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_1

    .line 2535
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2536
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2537
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2538
    return-void

    .line 2542
    :cond_2
    return-void
.end method

.method advanceTo(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2574
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    :try_start_0
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2575
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->getLiveValue(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 2576
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 2577
    new-instance v2, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2578
    nop

    .line 2584
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 2578
    const/4 v2, 0x1

    return v2

    .line 2581
    :cond_0
    nop

    .line 2584
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 2581
    const/4 v2, 0x0

    return v2

    .line 2584
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 2585
    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 2590
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method nextEntry()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .line 2594
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    .line 2597
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2598
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 2599
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    return-object v0

    .line 2595
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method nextInChain()Z
    .locals 1

    .line 2546
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_1

    .line 2547
    nop

    :goto_0
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_1

    .line 2548
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2549
    const/4 v0, 0x1

    return v0

    .line 2547
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    goto :goto_0

    .line 2553
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method nextInTable()Z
    .locals 3

    .line 2558
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    nop

    :cond_0
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 2559
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_0

    .line 2560
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2561
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2565
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 2604
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 2605
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2607
    return-void
.end method
