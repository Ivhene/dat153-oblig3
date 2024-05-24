.class public final Lorg/jsoup/internal/ConstrainableInputStream;
.super Ljava/io/BufferedInputStream;
.source "ConstrainableInputStream.java"


# static fields
.field private static final DefaultSize:I = 0x8000


# instance fields
.field private final capped:Z

.field private interrupted:Z

.field private final maxSize:I

.field private remaining:I

.field private startTime:J

.field private timeout:J


# direct methods
.method private constructor <init>(Ljava/io/InputStream;II)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "maxSize"    # I

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    .line 28
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 29
    iput p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->maxSize:I

    .line 30
    iput p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    .line 31
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    .line 33
    return-void
.end method

.method private expired()Z
    .locals 8

    .line 114
    iget-wide v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    return v1

    .line 117
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 118
    .local v2, "now":J
    iget-wide v4, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    sub-long v4, v2, v4

    .line 119
    .local v4, "dur":J
    iget-wide v6, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "bufferSize"    # I
    .param p2, "maxSize"    # I

    .line 43
    instance-of v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/jsoup/internal/ConstrainableInputStream;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lorg/jsoup/internal/ConstrainableInputStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/jsoup/internal/ConstrainableInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 43
    :goto_0
    return-object v0
.end method


# virtual methods
.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->interrupted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->interrupted:Z

    .line 55
    return v1

    .line 57
    :cond_1
    invoke-direct {p0}, Lorg/jsoup/internal/ConstrainableInputStream;->expired()Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    iget-boolean v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->capped:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    if-le p3, v0, :cond_2

    .line 61
    iget p3, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    .line 64
    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 65
    .local v0, "read":I
    iget v1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return v0

    .line 67
    .end local v0    # "read":I
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    return v1

    .line 58
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :cond_3
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "Read timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_4
    :goto_0
    return v1
.end method

.method public readToByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 78
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 79
    .local v0, "localCapped":Z
    :goto_1
    const v2, 0x8000

    if-eqz v0, :cond_2

    if-ge p1, v2, :cond_2

    move v2, p1

    .line 80
    .local v2, "bufferSize":I
    :cond_2
    new-array v3, v2, [B

    .line 81
    .local v3, "readBuffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 84
    .local v4, "outStream":Ljava/io/ByteArrayOutputStream;
    move v5, p1

    .line 87
    .local v5, "remaining":I
    :goto_2
    invoke-virtual {p0, v3}, Lorg/jsoup/internal/ConstrainableInputStream;->read([B)I

    move-result v6

    .line 88
    .local v6, "read":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_3

    .line 89
    :cond_3
    if-eqz v0, :cond_5

    .line 90
    if-lt v6, v5, :cond_4

    .line 91
    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 92
    nop

    .line 98
    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 94
    :cond_4
    sub-int/2addr v5, v6

    .line 96
    :cond_5
    invoke-virtual {v4, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 104
    iget v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->maxSize:I

    iget v1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->remaining:I

    .line 105
    return-void
.end method

.method public timeout(JJ)Lorg/jsoup/internal/ConstrainableInputStream;
    .locals 2
    .param p1, "startTimeNanos"    # J
    .param p3, "timeoutMillis"    # J

    .line 108
    iput-wide p1, p0, Lorg/jsoup/internal/ConstrainableInputStream;->startTime:J

    .line 109
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lorg/jsoup/internal/ConstrainableInputStream;->timeout:J

    .line 110
    return-object p0
.end method
