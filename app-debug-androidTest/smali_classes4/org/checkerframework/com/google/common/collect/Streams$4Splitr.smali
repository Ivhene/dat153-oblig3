.class Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;
.super Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Streams;->mapWithIndex(Ljava/util/stream/DoubleStream;Lorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "4Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator<",
        "Ljava/util/Spliterator$OfDouble;",
        "TR;",
        "Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;",
        ">;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field holder:D

.field final synthetic val$function:Lorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfDouble;JLorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;)V
    .locals 0
    .param p1, "splitr"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfDouble;",
            "J)V"
        }
    .end annotation

    .line 686
    iput-object p4, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->val$function:Lorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;

    .line 687
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;-><init>(Ljava/util/Spliterator;J)V

    .line 688
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0
    .param p1, "t"    # D

    .line 692
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->holder:D

    .line 693
    return-void
.end method

.method createSplit(Ljava/util/Spliterator$OfDouble;J)Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;
    .locals 2
    .param p1, "from"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "i"    # J

    .line 706
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->val$function:Lorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;-><init>(Ljava/util/Spliterator$OfDouble;JLorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    return-object v0
.end method

.method bridge synthetic createSplit(Ljava/util/Spliterator;J)Lorg/checkerframework/com/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 0

    .line 682
    check-cast p1, Ljava/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->createSplit(Ljava/util/Spliterator$OfDouble;J)Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;

    move-result-object p1

    return-object p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 697
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->fromSpliterator:Ljava/util/Spliterator;

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->val$function:Lorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;

    iget-wide v1, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->holder:D

    iget-wide v3, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->index:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lorg/checkerframework/com/google/common/collect/Streams$4Splitr;->index:J

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/Streams$DoubleFunctionWithIndex;->apply(DJ)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 699
    const/4 v0, 0x1

    return v0

    .line 701
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
