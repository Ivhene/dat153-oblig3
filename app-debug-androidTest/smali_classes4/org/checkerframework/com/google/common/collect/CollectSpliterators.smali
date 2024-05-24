.class final Lorg/checkerframework/com/google/common/collect/CollectSpliterators;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;,
        Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;,
        Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;,
        Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;,
        Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;,
        Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filter(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 144
    .local p0, "fromSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$1Splitr;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$1Splitr;-><init>(Ljava/util/Spliterator;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method static flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            "OutElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;>;IJ)",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;"
        }
    .end annotation

    .line 206
    .local p0, "fromSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator<TOutElementT;>;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 209
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 212
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0
.end method

.method static flatMapToDouble(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfDouble;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator$OfDouble;",
            ">;IJ)",
            "Ljava/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 272
    .local p0, "fromSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfDouble;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 275
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 278
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0
.end method

.method static flatMapToInt(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfInt;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator$OfInt;",
            ">;IJ)",
            "Ljava/util/Spliterator$OfInt;"
        }
    .end annotation

    .line 228
    .local p0, "fromSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfInt;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 231
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 234
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0
.end method

.method static flatMapToLong(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator$OfLong;
    .locals 9
    .param p2, "topCharacteristics"    # I
    .param p3, "topSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator$OfLong;",
            ">;IJ)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 250
    .local p0, "fromSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfLong;>;"
    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    invoke-static {v0, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 253
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 256
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v0
.end method

.method static indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;
    .locals 1
    .param p0, "size"    # I
    .param p1, "extraCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/function/IntFunction<",
            "TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 42
    .local p2, "function":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;
    .locals 2
    .param p0, "size"    # I
    .param p1, "extraCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/function/IntFunction<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    .local p2, "function":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<TT;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 51
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 98
    :cond_1
    new-instance v1, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$1WithCharacteristics;

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-direct {v1, v0, p2, p1, p3}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$1WithCharacteristics;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    return-object v1
.end method

.method static map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InElementT:",
            "Ljava/lang/Object;",
            "OutElementT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;+TOutElementT;>;)",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;"
        }
    .end annotation

    .line 108
    .local p0, "fromSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;+TOutElementT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$1;-><init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V

    return-object v0
.end method