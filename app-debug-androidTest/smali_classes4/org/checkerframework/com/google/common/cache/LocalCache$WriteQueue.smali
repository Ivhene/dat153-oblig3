.class final Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3619
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3620
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$1;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 3724
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3725
    .local v0, "e":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3726
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3727
    .local v1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullifyWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3728
    move-object v0, v1

    .line 3729
    .end local v1    # "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    goto :goto_0

    .line 3731
    :cond_0
    invoke-interface {v1, v1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3732
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-interface {v1, v1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3733
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3702
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3703
    .local v0, "e":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/com/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/checkerframework/com/google/common/cache/LocalCache$NullEntry;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 3708
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3737
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->peek()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue$2;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3619
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    check-cast p1, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->offer(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Z

    move-result p1

    return p1
.end method

.method public offer(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3661
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    .local p1, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3664
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3665
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3667
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 3619
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->peek()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3672
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3673
    .local v0, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 3619
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->poll()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3678
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3679
    .local v0, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3680
    const/4 v1, 0x0

    return-object v1

    .line 3683
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->remove(Ljava/lang/Object;)Z

    .line 3684
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 3690
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 3691
    .local v0, "e":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3692
    .local v1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 3693
    .local v2, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/cache/LocalCache;->connectWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3694
    invoke-static {v0}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullifyWriteOrder(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 3696
    sget-object v3, Lorg/checkerframework/com/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/checkerframework/com/google/common/cache/LocalCache$NullEntry;

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public size()I
    .locals 3

    .line 3713
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    const/4 v0, 0x0

    .line 3714
    .local v0, "size":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3715
    .local v1, "e":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WriteQueue;->head:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    if-eq v1, v2, :cond_0

    .line 3717
    add-int/lit8 v0, v0, 0x1

    .line 3716
    invoke-interface {v1}, Lorg/checkerframework/com/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 3719
    .end local v1    # "e":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_0
    return v0
.end method
