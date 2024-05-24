.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<",
        "TK;TV;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry<",
        "TK;TV;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V
    .locals 1
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 481
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 477
    nop

    .line 478
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 482
    return-void
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    .line 474
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method

.method static synthetic access$602(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 474
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p1
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    .line 491
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 492
    return-void
.end method

.method copy(Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 502
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p1, "queueForValues":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->hash:I

    invoke-direct {v0, v1, v2, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V

    .line 503
    .local v0, "newEntry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v1, p1, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 504
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method

.method setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "queueForValues":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 496
    .local v0, "previous":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    invoke-direct {v1, p2, p1, p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 497
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 498
    return-void
.end method
