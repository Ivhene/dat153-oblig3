.class abstract Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapWithIndexSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/util/Spliterator<",
        "*>;R:",
        "Ljava/lang/Object;",
        "S:",
        "Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator<",
        "TF;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final fromSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field index:J


# direct methods
.method constructor <init>(Ljava/util/Spliterator;J)V
    .locals 0
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)V"
        }
    .end annotation

    .line 732
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;, "Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    .local p1, "fromSpliterator":Ljava/util/Spliterator;, "TF;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    .line 734
    iput-wide p2, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 735
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 758
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;, "Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, 0x4050

    return v0
.end method

.method abstract createSplit(Ljava/util/Spliterator;J)Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)TS;"
        }
    .end annotation
.end method

.method public estimateSize()J
    .locals 2

    .line 753
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;, "Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .line 726
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;, "Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->trySplit()Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 742
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;, "Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 743
    .local v0, "split":Ljava/util/Spliterator;, "TF;"
    if-nez v0, :cond_0

    .line 744
    const/4 v1, 0x0

    return-object v1

    .line 746
    :cond_0
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->createSplit(Ljava/util/Spliterator;J)Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v1

    .line 747
    .local v1, "result":Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;, "TS;"
    iget-wide v2, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 748
    return-object v1
.end method