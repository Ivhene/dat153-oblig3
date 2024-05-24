.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<",
        "TK;",
        "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)V"
        }
    .end annotation

    .line 679
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 680
    return-void
.end method


# virtual methods
.method copy(Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 691
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p1, "queueForKeys":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->hash:I

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 674
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getValue()Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;
    .locals 1

    .line 684
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;->VALUE:Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    return-object v0
.end method

.method setValue(Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p1, "value"    # Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    .line 687
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    return-void
.end method
