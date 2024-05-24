.class final Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;
.super Lorg/checkerframework/com/google/common/io/ByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlicedByteSource"
.end annotation


# instance fields
.field final length:J

.field final offset:J

.field final synthetic this$0:Lorg/checkerframework/com/google/common/io/ByteSource;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/io/ByteSource;JJ)V
    .locals 5
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .line 487
    iput-object p1, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->this$0:Lorg/checkerframework/com/google/common/io/ByteSource;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/io/ByteSource;-><init>()V

    .line 488
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    const-string v4, "offset (%s) may not be negative"

    invoke-static {p1, v4, p2, p3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 489
    cmp-long p1, p4, v0

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string p1, "length (%s) may not be negative"

    invoke-static {v2, p1, p4, p5}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 490
    iput-wide p2, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->offset:J

    .line 491
    iput-wide p4, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->length:J

    .line 492
    return-void
.end method

.method private sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->offset:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 508
    :try_start_0
    invoke-static {p1, v0, v1}, Lorg/checkerframework/com/google/common/io/ByteStreams;->skipUpTo(Ljava/io/InputStream;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .local v0, "skipped":J
    nop

    .line 519
    iget-wide v2, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->offset:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 521
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 522
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2

    .line 509
    .end local v0    # "skipped":J
    :catchall_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v1

    .line 511
    .local v1, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 513
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .end local p1    # "in":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .restart local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 516
    throw v2

    .line 525
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-static {p1, v0, v1}, Lorg/checkerframework/com/google/common/io/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-super {p0}, Lorg/checkerframework/com/google/common/io/ByteSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->this$0:Lorg/checkerframework/com/google/common/io/ByteSource;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/ByteSource;->openBufferedStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->this$0:Lorg/checkerframework/com/google/common/io/ByteSource;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->sliceStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sizeIfKnown()Lorg/checkerframework/com/google/common/base/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->this$0:Lorg/checkerframework/com/google/common/io/ByteSource;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/ByteSource;->sizeIfKnown()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    .line 544
    .local v0, "optionalUnslicedSize":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 546
    .local v1, "unslicedSize":J
    iget-wide v3, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 547
    .local v3, "off":J
    iget-wide v5, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long v7, v1, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v5

    return-object v5

    .line 549
    .end local v1    # "unslicedSize":J
    .end local v3    # "off":J
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Optional;->absent()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method

.method public slice(JJ)Lorg/checkerframework/com/google/common/io/ByteSource;
    .locals 7
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 530
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "offset (%s) may not be negative"

    invoke-static {v2, v5, p1, p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 531
    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v0, "length (%s) may not be negative"

    invoke-static {v3, v0, p3, p4}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 532
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->length:J

    sub-long/2addr v0, p1

    .line 533
    .local v0, "maxLength":J
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->this$0:Lorg/checkerframework/com/google/common/io/ByteSource;

    iget-wide v3, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->offset:J

    add-long/2addr v3, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/checkerframework/com/google/common/io/ByteSource;->slice(JJ)Lorg/checkerframework/com/google/common/io/ByteSource;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->this$0:Lorg/checkerframework/com/google/common/io/ByteSource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".slice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/checkerframework/com/google/common/io/ByteSource$SlicedByteSource;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method