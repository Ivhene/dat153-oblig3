.class public Lscenelib/annotations/io/DebugWriter;
.super Ljava/lang/Object;
.source "DebugWriter.java"


# instance fields
.field private level:Ljava/util/logging/Level;

.field private out:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lscenelib/annotations/io/DebugWriter;->out:Ljava/io/PrintWriter;

    .line 8
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object v0, p0, Lscenelib/annotations/io/DebugWriter;->level:Ljava/util/logging/Level;

    return-void
.end method

.method public static varargs anyEnabled([Lscenelib/annotations/io/DebugWriter;)Z
    .locals 5
    .param p0, "debugs"    # [Lscenelib/annotations/io/DebugWriter;

    .line 20
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 21
    .local v3, "debug":Lscenelib/annotations/io/DebugWriter;
    invoke-virtual {v3}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 20
    .end local v3    # "debug":Lscenelib/annotations/io/DebugWriter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method


# virtual methods
.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lscenelib/annotations/io/DebugWriter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lscenelib/annotations/io/DebugWriter;->out:Ljava/io/PrintWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lscenelib/annotations/io/DebugWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 39
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .line 27
    iget-object v0, p0, Lscenelib/annotations/io/DebugWriter;->level:Ljava/util/logging/Level;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public or(Lscenelib/annotations/io/DebugWriter;)Lscenelib/annotations/io/DebugWriter;
    .locals 1
    .param p1, "other"    # Lscenelib/annotations/io/DebugWriter;

    .line 11
    new-instance v0, Lscenelib/annotations/io/DebugWriter$1;

    invoke-direct {v0, p0, p1}, Lscenelib/annotations/io/DebugWriter$1;-><init>(Lscenelib/annotations/io/DebugWriter;Lscenelib/annotations/io/DebugWriter;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 31
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    :goto_0
    iput-object v0, p0, Lscenelib/annotations/io/DebugWriter;->level:Ljava/util/logging/Level;

    .line 32
    return-void
.end method
