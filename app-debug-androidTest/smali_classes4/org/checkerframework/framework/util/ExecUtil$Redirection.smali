.class public Lorg/checkerframework/framework/util/ExecUtil$Redirection;
.super Ljava/lang/Object;
.source "ExecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/ExecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Redirection"
.end annotation


# instance fields
.field private final buffer:[C

.field private exception:Ljava/io/IOException;

.field private final out:Ljava/io/OutputStreamWriter;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, p2, [C

    iput-object v0, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->buffer:[C

    .line 55
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->out:Ljava/io/OutputStreamWriter;

    .line 56
    return-void
.end method


# virtual methods
.method public join()Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 88
    iget-object v0, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->exception:Ljava/io/IOException;

    return-object v0
.end method

.method synthetic lambda$redirect$0$org-checkerframework-framework-util-ExecUtil$Redirection(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 65
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v0, "in":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 69
    .local v1, "read":I
    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 70
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->buffer:[C

    invoke-virtual {v0, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    move v1, v2

    .line 71
    if-lez v1, :cond_0

    .line 72
    iget-object v2, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->out:Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->buffer:[C

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStreamWriter;->write([CII)V

    .line 74
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->out:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v1    # "read":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "exc":Ljava/io/IOException;
    :try_start_1
    iput-object v1, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->exception:Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "exc":Ljava/io/IOException;
    goto :goto_2

    .line 80
    :goto_1
    invoke-static {v0}, Lorg/checkerframework/framework/util/ExecUtil;->quietlyClose(Ljava/io/Reader;)V

    throw v1

    :cond_1
    :goto_2
    invoke-static {v0}, Lorg/checkerframework/framework/util/ExecUtil;->quietlyClose(Ljava/io/Reader;)V

    .line 81
    nop

    .line 82
    return-void
.end method

.method public redirect(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inStream"    # Ljava/io/InputStream;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->exception:Ljava/io/IOException;

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/checkerframework/framework/util/ExecUtil$Redirection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/framework/util/ExecUtil$Redirection$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/framework/util/ExecUtil$Redirection;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->thread:Ljava/lang/Thread;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method
