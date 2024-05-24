.class final Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$CleanupMapTask;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CleanupMapTask"
.end annotation


# instance fields
.field final mapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "****>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<",
            "****>;)V"
        }
    .end annotation

    .line 2259
    .local p1, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<****>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    .line 2261
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2265
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;

    .line 2266
    .local v0, "map":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap<****>;"
    if-eqz v0, :cond_1

    .line 2270
    iget-object v1, v0, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap;->segments:[Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2271
    .local v4, "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<****>;"
    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 2270
    .end local v4    # "segment":Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment;, "Lorg/checkerframework/com/google/common/collect/MapMakerInternalMap$Segment<****>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2273
    :cond_0
    return-void

    .line 2267
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1
.end method
