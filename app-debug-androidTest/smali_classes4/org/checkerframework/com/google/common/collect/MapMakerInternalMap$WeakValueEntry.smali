.class interface abstract Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;"
    }
.end annotation


# virtual methods
.method public abstract clearValue()V
.end method

.method public abstract getValueReference()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation
.end method
