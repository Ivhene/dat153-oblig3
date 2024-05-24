.class Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;
.super Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringCharSource"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "seq"    # Ljava/lang/String;

    .line 629
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    .line 630
    return-void
.end method


# virtual methods
.method public copyTo(Ljava/lang/Appendable;)J
    .locals 2
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 640
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public copyTo(Lorg/checkerframework/com/google/common/io/CharSink;)J
    .locals 4
    .param p1, "sink"    # Lorg/checkerframework/com/google/common/io/CharSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-static {}, Lorg/checkerframework/com/google/common/io/Closer;->create()Lorg/checkerframework/com/google/common/io/Closer;

    move-result-object v0

    .line 648
    .local v0, "closer":Lorg/checkerframework/com/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Writer;

    .line 649
    .local v1, "writer":Ljava/io/Writer;
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 650
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    .line 654
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 650
    return-wide v2

    .line 651
    .end local v1    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .end local p1    # "sink":Lorg/checkerframework/com/google/common/io/CharSink;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 654
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lorg/checkerframework/com/google/common/io/Closer;
    .restart local p1    # "sink":Lorg/checkerframework/com/google/common/io/CharSink;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/io/Closer;->close()V

    .line 655
    throw v1
.end method

.method public openStream()Ljava/io/Reader;
    .locals 2

    .line 634
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
