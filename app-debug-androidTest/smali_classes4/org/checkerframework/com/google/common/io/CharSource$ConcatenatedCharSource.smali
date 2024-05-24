.class final Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;
.super Lorg/checkerframework/com/google/common/io/CharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedCharSource"
.end annotation


# instance fields
.field private final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/io/CharSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/io/CharSource;",
            ">;)V"
        }
    .end annotation

    .line 677
    .local p1, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/io/CharSource;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/io/CharSource;-><init>()V

    .line 678
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 679
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/io/CharSource;

    .line 689
    .local v1, "source":Lorg/checkerframework/com/google/common/io/CharSource;
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/io/CharSource;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    const/4 v0, 0x0

    return v0

    .line 692
    .end local v1    # "source":Lorg/checkerframework/com/google/common/io/CharSource;
    :cond_0
    goto :goto_0

    .line 693
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    const-wide/16 v0, 0x0

    .line 712
    .local v0, "result":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/io/CharSource;

    .line 713
    .local v3, "source":Lorg/checkerframework/com/google/common/io/CharSource;
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/io/CharSource;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 714
    .end local v3    # "source":Lorg/checkerframework/com/google/common/io/CharSource;
    goto :goto_0

    .line 715
    :cond_0
    return-wide v0
.end method

.method public lengthIfKnown()Lorg/checkerframework/com/google/common/base/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 698
    const-wide/16 v0, 0x0

    .line 699
    .local v0, "result":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/io/CharSource;

    .line 700
    .local v3, "source":Lorg/checkerframework/com/google/common/io/CharSource;
    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/io/CharSource;->lengthIfKnown()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v4

    .line 701
    .local v4, "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/base/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 702
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Optional;->absent()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v2

    return-object v2

    .line 704
    :cond_0
    invoke-virtual {v4}, Lorg/checkerframework/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 705
    .end local v3    # "source":Lorg/checkerframework/com/google/common/io/CharSource;
    .end local v4    # "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    goto :goto_0

    .line 706
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v2

    return-object v2
.end method

.method public openStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    new-instance v0, Lorg/checkerframework/com/google/common/io/MultiReader;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/io/MultiReader;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharSource.concat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
