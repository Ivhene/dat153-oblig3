.class public final Lcom/android/dx/command/grep/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 28
    .local v1, "dexFile":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, p0, v2

    .line 30
    .local v3, "pattern":Ljava/lang/String;
    new-instance v4, Lcom/android/dex/Dex;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/dex/Dex;-><init>(Ljava/io/File;)V

    .line 31
    .local v4, "dex":Lcom/android/dex/Dex;
    new-instance v5, Lcom/android/dx/command/grep/Grep;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    new-instance v7, Ljava/io/PrintWriter;

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v4, v6, v7}, Lcom/android/dx/command/grep/Grep;-><init>(Lcom/android/dex/Dex;Ljava/util/regex/Pattern;Ljava/io/PrintWriter;)V

    invoke-virtual {v5}, Lcom/android/dx/command/grep/Grep;->grep()I

    move-result v5

    .line 32
    .local v5, "count":I
    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 33
    return-void
.end method
