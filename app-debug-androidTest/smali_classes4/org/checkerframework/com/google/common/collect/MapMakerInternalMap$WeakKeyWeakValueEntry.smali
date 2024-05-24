.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<",
        "TK;TV;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry<",
        "TK;TV;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 849
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 844
    nop

    .line 845
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 850
    return-void
.end method

.method static synthetic access$700(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 841
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method

.method static synthetic access$702(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 841
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p1
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    .line 869
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 870
    return-void
.end method

.method copy(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 861
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    .local p1, "queueForKeys":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "queueForValues":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p3, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 862
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->hash:I

    invoke-direct {v0, p1, v1, v2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;)V

    .line 863
    .local v0, "newEntry":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v1, p2, v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v1

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 864
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 854
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

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
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 880
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

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

    .line 873
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "queueForValues":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 874
    .local v0, "previous":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry<TK;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    invoke-direct {v1, p2, p1, p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 875
    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 876
    return-void
.end method
