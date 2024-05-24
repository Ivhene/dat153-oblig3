.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWriting"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final PREFIX:Ljava/lang/String; = "[Byte Buddy]"


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .line 4904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4905
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    .line 4906
    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .locals 2

    .line 4923
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .locals 2

    .line 4914
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 3
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 4930
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v1, "[Byte Buddy] BEFORE_INSTALL %s on %s%n"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 4931
    return-void
.end method

.method public onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 4
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 4944
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    monitor-enter v0

    .line 4945
    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR %s on %s%n"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 4946
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 4947
    monitor-exit v0

    .line 4948
    return-object p3

    .line 4947
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 3
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 4937
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v1, "[Byte Buddy] INSTALL %s on %s%n"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 4938
    return-void
.end method

.method public onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 3
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 4955
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v1, "[Byte Buddy] RESET %s on %s%n"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 4956
    return-void
.end method
