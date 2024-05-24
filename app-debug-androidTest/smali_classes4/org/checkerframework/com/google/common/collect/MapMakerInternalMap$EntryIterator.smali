.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;
.super Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    .line 2673
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntryIterator;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;->this$0:Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2673
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2677
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$EntryIterator;->nextEntry()Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
