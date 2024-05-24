.class Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;
.super Lorg/checkerframework/com/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmallLazyStriped"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/util/concurrent/Striped$PowerOfTwoStriped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<",
            "+T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final size:I

.field final supplier:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILorg/checkerframework/com/google/common/base/Supplier;)V
    .locals 2
    .param p1, "stripes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 444
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    .local p2, "supplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TL;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 441
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 445
    iget v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->mask:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->mask:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->size:I

    .line 446
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 447
    iput-object p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 448
    return-void
.end method

.method private drainQueue()V
    .locals 5

    .line 479
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TL;>;"
    if-eqz v0, :cond_0

    .line 481
    move-object v0, v1

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    .line 484
    .local v0, "arrayRef":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, v0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;->index:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    .end local v0    # "arrayRef":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->size:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    .line 456
    .local v0, "existingRef":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 457
    .local v2, "existing":Ljava/lang/Object;, "TL;"
    :goto_0
    if-eqz v2, :cond_2

    .line 458
    return-object v2

    .line 460
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-interface {v3}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    .line 461
    .local v3, "created":Ljava/lang/Object;, "TL;"
    new-instance v4, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    iget-object v5, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v3, p1, v5}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    .line 462
    .local v4, "newRef":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<TL;>;"
    :cond_3
    iget-object v5, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v5, p1, v0, v4}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 464
    iget-object v5, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    .line 465
    if-nez v0, :cond_4

    move-object v5, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;->get()Ljava/lang/Object;

    move-result-object v5

    :goto_1
    move-object v2, v5

    .line 466
    if-eqz v2, :cond_3

    .line 467
    return-object v2

    .line 470
    :cond_5
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->drainQueue()V

    .line 471
    return-object v3
.end method

.method public size()I
    .locals 1

    .line 490
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;->size:I

    return v0
.end method
