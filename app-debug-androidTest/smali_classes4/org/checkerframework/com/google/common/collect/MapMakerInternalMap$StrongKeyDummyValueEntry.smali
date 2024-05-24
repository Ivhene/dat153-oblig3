.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyDummyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<",
        "TK;",
        "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;>;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)V
    .locals 0
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)V"
        }
    .end annotation

    .line 575
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 576
    return-void
.end method


# virtual methods
.method copy(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 586
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    .local p1, "newNext":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->hash:I

    invoke-direct {v0, v1, v2, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 571
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->getValue()Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;
    .locals 1

    .line 580
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;->VALUE:Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    return-object v0
.end method

.method setValue(Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p1, "value"    # Lorg/checkerframework/com/google/common/collect/MapMaker$Dummy;

    .line 583
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    return-void
.end method
