.class final Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;
.super Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSpliteratorOfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<",
        "TInElementT;",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator$OfLong;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V
    .locals 8
    .param p1, "prefix"    # Ljava/util/Spliterator$OfLong;
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator$OfLong;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator$OfLong;",
            ">;IJ)V"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong<TInElementT;>;"
    .local p2, "from":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfLong;>;"
    new-instance v4, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/Spliterator;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V

    .line 516
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 506
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong<TInElementT;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 0

    .line 506
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong<TInElementT;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    .line 506
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong<TInElementT;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method
