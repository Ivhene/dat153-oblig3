.class abstract Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
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
.field currentSegment:Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextExternal:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/cache/LocalCache;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/cache/LocalCache;

    .line 4323
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4324
    iget-object v0, p1, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    .line 4325
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4326
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4327
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .line 4333
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4335
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4336
    return-void

    .line 4339
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4340
    return-void

    .line 4343
    :cond_1
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_2

    .line 4344
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->segments:[Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    .line 4345
    iget v0, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_1

    .line 4346
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4347
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4348
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4349
    return-void

    .line 4353
    :cond_2
    return-void
.end method

.method advanceTo(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 4385
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/cache/LocalCache;->ticker:Lorg/checkerframework/com/google/common/base/Ticker;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 4386
    .local v0, "now":J
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4387
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->getLiveValue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v3

    .line 4388
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 4389
    new-instance v4, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    invoke-direct {v4, v5, v2, v3}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4390
    nop

    .line 4396
    iget-object v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4390
    const/4 v4, 0x1

    return v4

    .line 4393
    :cond_0
    nop

    .line 4396
    iget-object v4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4393
    const/4 v4, 0x0

    return v4

    .line 4396
    .end local v0    # "now":J
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->currentSegment:Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 4397
    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 4402
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

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

.method nextEntry()Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/LocalCache<",
            "TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .line 4406
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextExternal:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    .line 4409
    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4410
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4411
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    return-object v0

    .line 4407
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method nextInChain()Z
    .locals 1

    .line 4357
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4358
    nop

    :goto_0
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNext()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4359
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->advanceTo(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4360
    const/4 v0, 0x1

    return v0

    .line 4358
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    goto :goto_0

    .line 4364
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method nextInTable()Z
    .locals 3

    .line 4369
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    nop

    :cond_0
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 4370
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextEntry:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4371
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->advanceTo(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4372
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4376
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 4416
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;, "Lorg/checkerframework/com/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 4417
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->this$0:Lorg/checkerframework/com/google/common/cache/LocalCache;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4418
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$HashIterator;->lastReturned:Lorg/checkerframework/com/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4419
    return-void
.end method
