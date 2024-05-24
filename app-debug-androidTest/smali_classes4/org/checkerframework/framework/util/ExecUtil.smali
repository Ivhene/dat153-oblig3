.class public Lorg/checkerframework/framework/util/ExecUtil;
.super Ljava/lang/Object;
.source "ExecUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute([Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/OutputStream;)I
    .locals 8
    .param p0, "cmd"    # [Ljava/lang/String;
    .param p1, "std"    # Ljava/io/OutputStream;
    .param p2, "err"    # Ljava/io/OutputStream;

    .line 15
    const-string v0, " "

    const-string v1, "Exception executing command: "

    new-instance v2, Lorg/checkerframework/framework/util/ExecUtil$Redirection;

    const/16 v3, 0x400

    invoke-direct {v2, p1, v3}, Lorg/checkerframework/framework/util/ExecUtil$Redirection;-><init>(Ljava/io/OutputStream;I)V

    .line 16
    .local v2, "outRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    new-instance v4, Lorg/checkerframework/framework/util/ExecUtil$Redirection;

    invoke-direct {v4, p2, v3}, Lorg/checkerframework/framework/util/ExecUtil$Redirection;-><init>(Ljava/io/OutputStream;I)V

    move-object v3, v4

    .line 19
    .local v3, "errRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 20
    .local v4, "proc":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->redirect(Ljava/io/InputStream;)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->redirect(Ljava/io/InputStream;)V

    .line 23
    invoke-virtual {v2}, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->join()Ljava/io/IOException;

    move-result-object v5

    .line 24
    .local v5, "stdExc":Ljava/io/IOException;
    invoke-virtual {v3}, Lorg/checkerframework/framework/util/ExecUtil$Redirection;->join()Ljava/io/IOException;

    move-result-object v6

    .line 25
    .local v6, "errExc":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v7

    .line 27
    .local v7, "exitStatus":I
    if-nez v5, :cond_1

    .line 31
    if-nez v6, :cond_0

    .line 35
    return v7

    .line 32
    :cond_0
    nop

    .end local v2    # "outRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .end local v3    # "errRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .end local p0    # "cmd":[Ljava/lang/String;
    .end local p1    # "std":Ljava/io/OutputStream;
    .end local p2    # "err":Ljava/io/OutputStream;
    throw v6

    .line 28
    .restart local v2    # "outRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .restart local v3    # "errRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .restart local p0    # "cmd":[Ljava/lang/String;
    .restart local p1    # "std":Ljava/io/OutputStream;
    .restart local p2    # "err":Ljava/io/OutputStream;
    :cond_1
    nop

    .end local v2    # "outRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .end local v3    # "errRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .end local p0    # "cmd":[Ljava/lang/String;
    .end local p1    # "std":Ljava/io/OutputStream;
    .end local p2    # "err":Ljava/io/OutputStream;
    throw v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v4    # "proc":Ljava/lang/Process;
    .end local v5    # "stdExc":Ljava/io/IOException;
    .end local v6    # "errExc":Ljava/io/IOException;
    .end local v7    # "exitStatus":I
    .restart local v2    # "outRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .restart local v3    # "errRedirect":Lorg/checkerframework/framework/util/ExecUtil$Redirection;
    .restart local p0    # "cmd":[Ljava/lang/String;
    .restart local p1    # "std":Ljava/io/OutputStream;
    .restart local p2    # "err":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 40
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 37
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 38
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static quietlyClose(Ljava/io/Reader;)V
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    :goto_0
    return-void
.end method

.method public static quietlyClose(Ljava/io/Writer;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    return-void
.end method
