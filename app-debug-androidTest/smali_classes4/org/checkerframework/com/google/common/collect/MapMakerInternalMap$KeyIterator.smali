.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    .line 2610
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeyIterator;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2614
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeyIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$KeyIterator;->nextEntry()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
