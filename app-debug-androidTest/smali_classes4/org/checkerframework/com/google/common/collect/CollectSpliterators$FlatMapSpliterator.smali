.class abstract Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FlatMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;"
    }
.end annotation


# instance fields
.field characteristics:I

.field estimatedSize:J

.field final factory:Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field final from:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TInElementT;>;"
        }
    .end annotation
.end field

.field final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field prefix:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutSpliteratorT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V
    .locals 0
    .param p5, "characteristics"    # I
    .param p6, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutSpliteratorT;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;",
            "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;IJ)V"
        }
    .end annotation

    .line 318
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "prefix":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    .local p2, "from":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;TOutSpliteratorT;>;"
    .local p4, "factory":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<TInElementT;TOutSpliteratorT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 320
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    .line 321
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 322
    iput-object p4, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->factory:Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;

    .line 323
    iput p5, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    .line 324
    iput-wide p6, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 325
    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    .line 402
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    .line 394
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 395
    iget-wide v1, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 397
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)V"
        }
    .end annotation

    .line 353
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TOutElementT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 365
    return-void
.end method

.method synthetic lambda$forEachRemaining$1$org-checkerframework-com-google-common-collect-CollectSpliterators$FlatMapSpliterator(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "fromElement"    # Ljava/lang/Object;

    .line 359
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    .line 360
    .local v0, "elements":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TOutElementT;>;"
    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 363
    :cond_0
    return-void
.end method

.method synthetic lambda$tryAdvance$0$org-checkerframework-com-google-common-collect-CollectSpliterators$FlatMapSpliterator(Ljava/lang/Object;)V
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 345
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)Z"
        }
    .end annotation

    .line 337
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TOutElementT;>;"
    nop

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 339
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 341
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 343
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 345
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    new-instance v1, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutSpliteratorT;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 370
    .local v0, "fromSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 371
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    and-int/lit8 v9, v1, -0x41

    .line 372
    .local v9, "splitCharacteristics":I
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimateSize()J

    move-result-wide v1

    .line 373
    .local v1, "estSplitSize":J
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 374
    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 375
    iget-wide v3, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 376
    iput v9, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    move-wide v10, v1

    goto :goto_0

    .line 373
    :cond_0
    move-wide v10, v1

    .line 378
    .end local v1    # "estSplitSize":J
    .local v10, "estSplitSize":J
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->factory:Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 379
    move-object v3, v0

    move v5, v9

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;->newFlatMapSpliterator(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v1

    .line 381
    .local v1, "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    iput-object v8, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 382
    return-object v1

    .line 383
    .end local v1    # "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    .end local v9    # "splitCharacteristics":I
    .end local v10    # "estSplitSize":J
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 385
    .restart local v1    # "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    iput-object v8, p0, Lorg/checkerframework/com/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    .line 386
    return-object v1

    .line 388
    .end local v1    # "result":Ljava/util/Spliterator;, "TOutSpliteratorT;"
    :cond_2
    return-object v8
.end method
