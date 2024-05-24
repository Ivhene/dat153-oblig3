.class abstract Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;
.super Ljava/lang/Object;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Itr"
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
.field currentIndex:I

.field expectedModCount:I

.field indexToRemove:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V
    .locals 1

    .line 474
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iget v0, p1, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->modCount:I

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    .line 476
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result p1

    iput p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 477
    const/4 p1, -0x1

    iput p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;

    .line 474
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .line 509
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->modCount:I

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 512
    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract getOutput(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 481
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    .line 489
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 493
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->getOutput(I)Ljava/lang/Object;

    move-result-object v0

    .line 494
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 495
    return-object v0

    .line 490
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 500
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    .line 501
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 502
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    .line 503
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->access$000(Lorg/checkerframework/com/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 506
    return-void
.end method
