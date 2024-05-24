.class public abstract Lorg/checkerframework/com/google/common/io/CharSource;
.super Ljava/lang/Object;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;,
        Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;,
        Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;,
        Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;,
        Lorg/checkerframework/com/google/common/io/CharSource$AsByteSource;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/io/CharSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/checkerframework/com/google/common/io/CharSource;",
            ">;)",
            "Lorg/checkerframework/com/google/common/io/CharSource;"
        }
    .end annotation

    .line 431
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/checkerframework/com/google/common/io/CharSource;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/io/CharSource$ConcatenatedCharSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/io/CharSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/checkerframework/com/google/common/io/CharSource;",
            ">;)",
            "Lorg/checkerframework/com/google/common/io/CharSource;"
        }
    .end annotation

    .line 453
    .local p0, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/google/common/io/CharSource;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lorg/checkerframework/com/google/common/io/CharSource;)Lorg/checkerframework/com/google/common/io/CharSource;
    .locals 1
    .param p0, "sources"    # [Lorg/checkerframework/com/google/common/io/CharSource;

    .line 469
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method private countBySkipping(Ljava/io/Reader;)J
    .locals 8
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const-wide/16 v0, 0x0

    .line 219
    .local v0, "count":J
    :goto_0
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p1, v2, v3}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    move-wide v4, v2

    .local v4, "read":J
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 220
    add-long/2addr v0, v4

    goto :goto_0

    .line 222
    :cond_0
    return-wide v0
.end method

.method public static empty()Lorg/checkerframework/com/google/common/io/CharSource;
    .locals 1

    .line 491
    invoke-static {}, Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;->access$000()Lorg/checkerframework/com/google/common/io/CharSource$EmptyCharSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lines$0(Ljava/io/BufferedReader;)V
    .locals 2
    .param p0, "reader"    # Ljava/io/BufferedReader;

    .line 153
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public static wrap(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/io/CharSource;
    .locals 2
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 480
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asByteSource(Ljava/nio/charset/Charset;)Lorg/checkerframework/com/google/common/io/ByteSource;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 90
    new-instance v0, Lorg/checkerframework/com/google/common/io/CharSource$AsByteSource;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/io/CharSource$AsByteSource;-><init>(Lorg/checkerframework/com/google/common/io/CharSource;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v0

    .line 239
    .local v0, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 240
    .local v1, "reader":Ljava/io/Reader;
    invoke-static {v1, p1}, Lorg/checkerframework/com/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 240
    return-wide v2

    .line 241
    .end local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .end local p1    # "appendable":Ljava/lang/Appendable;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .restart local p1    # "appendable":Ljava/lang/Appendable;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 245
    throw v1
.end method

.method public copyTo(Lorg/checkerframework/com/google/common/io/CharSink;)J
    .locals 5
    .param p1, "sink"    # Lorg/checkerframework/com/google/common/io/CharSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v0

    .line 261
    .local v0, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 262
    .local v1, "reader":Ljava/io/Reader;
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Writer;

    .line 263
    .local v2, "writer":Ljava/io/Writer;
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 263
    return-wide v3

    .line 264
    .end local v1    # "reader":Ljava/io/Reader;
    .end local v2    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .end local p1    # "sink":Lorg/checkerframework/com/google/common/io/CharSink;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .restart local p1    # "sink":Lorg/checkerframework/com/google/common/io/CharSink;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 268
    throw v1
.end method

.method public forEachLine(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->lines()Ljava/util/stream/Stream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .local v0, "lines":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 388
    .end local v0    # "lines":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    :cond_0
    nop

    .line 389
    return-void

    .line 383
    .restart local v0    # "lines":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    .end local v0    # "lines":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    .restart local v0    # "lines":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/UncheckedIOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "lines":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/UncheckedIOException;
    invoke-virtual {v0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public isEmpty()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->lengthIfKnown()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    .line 405
    .local v0, "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 408
    :cond_1
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v1

    .line 410
    .local v1, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/Reader;

    .line 411
    .local v4, "reader":Ljava/io/Reader;
    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 415
    :goto_1
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 411
    return v2

    .line 412
    .end local v4    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v1    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    .restart local v1    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 416
    throw v2
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->lengthIfKnown()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    .line 201
    .local v0, "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 205
    :cond_0
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v1

    .line 207
    .local v1, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    .line 208
    .local v2, "reader":Ljava/io/Reader;
    invoke-direct {p0, v2}, Lorg/checkerframework/com/google/common/io/CharSource;->countBySkipping(Ljava/io/Reader;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 208
    return-wide v3

    .line 209
    .end local v2    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    .end local v1    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "lengthIfKnown":Lorg/checkerframework/com/google/common/base/Optional;, "Lorg/checkerframework/com/google/common/base/Optional<Ljava/lang/Long;>;"
    .restart local v1    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 213
    throw v2
.end method

.method public lengthIfKnown()Lorg/checkerframework/com/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Optional;->absent()Lorg/checkerframework/com/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public lines()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v0

    .line 148
    .local v0, "reader":Ljava/io/BufferedReader;
    nop

    .line 149
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/google/common/io/CharSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/google/common/io/CharSource$$ExternalSyntheticLambda0;-><init>(Ljava/io/BufferedReader;)V

    .line 150
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    .line 148
    return-object v1
.end method

.method public openBufferedStream()Ljava/io/BufferedReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    .line 113
    .local v0, "reader":Ljava/io/Reader;
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    return-object v1
.end method

.method public abstract openStream()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v0

    .line 279
    .local v0, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 280
    .local v1, "reader":Ljava/io/Reader;
    invoke-static {v1}, Lorg/checkerframework/com/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 280
    return-object v2

    .line 281
    .end local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 285
    throw v1
.end method

.method public readFirstLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v0

    .line 301
    .local v0, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 302
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 302
    return-object v2

    .line 303
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 307
    throw v1
.end method

.method public readLines(Lorg/checkerframework/com/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    .local p1, "processor":Lorg/checkerframework/com/google/common/io/LineProcessor;, "Lorg/checkerframework/com/google/common/io/LineProcessor<TT;>;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v0

    .line 359
    .local v0, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 360
    .local v1, "reader":Ljava/io/Reader;
    invoke-static {v1, p1}, Lorg/checkerframework/com/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;Lorg/checkerframework/com/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 360
    return-object v2

    .line 361
    .end local v1    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .end local p1    # "processor":Lorg/checkerframework/com/google/common/io/LineProcessor;, "Lorg/checkerframework/com/google/common/io/LineProcessor<TT;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .restart local p1    # "processor":Lorg/checkerframework/com/google/common/io/LineProcessor;, "Lorg/checkerframework/com/google/common/io/LineProcessor<TT;>;"
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 365
    throw v1
.end method

.method public readLines()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v0

    .line 324
    .local v0, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 325
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 327
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 328
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 330
    return-object v3

    .line 331
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 335
    throw v1
.end method
